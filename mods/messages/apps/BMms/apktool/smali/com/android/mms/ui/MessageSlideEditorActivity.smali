.class public Lcom/android/mms/ui/MessageSlideEditorActivity;
.super Lcom/android/mms/ui/BaseAttachmentViewActivity;
.source "MessageSlideEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageSlideEditorActivity$1;,
        Lcom/android/mms/ui/MessageSlideEditorActivity$2;,
        Lcom/android/mms/ui/MessageSlideEditorActivity$LinearLayoutManagerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mAudioUri:Ljava/lang/String;

.field private static final mImageUri:Ljava/lang/String;

.field private static final mVideoUri:Ljava/lang/String;


# instance fields
.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachmentMessageEditor:Landroid/widget/EditText;

.field private mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field private mDirty:Z

.field private mDotsLayout:Landroid/widget/LinearLayout;

.field private mDotsTextview:[Landroid/widget/TextView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mPosition:I

.field private mRecyclerViewHeight:I

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

.field private mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mSubjectSize:I

.field private mUpdateAttachmentText:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MessageSlideEditorActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlidesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MessageSlideEditorActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MessageSlideEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MessageSlideEditorActivity;ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessageSlideEditorActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MessageSlideEditorActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/MessageSlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->initView()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/MessageSlideEditorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/MessageSlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->removeEmptySlideObjects()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/mms/ui/MessageSlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->updateMmsSizeIndicator()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    .line 1190
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mVideoUri:Ljava/lang/String;

    .line 1192
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mImageUri:Ljava/lang/String;

    .line 1194
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAudioUri:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;-><init>()V

    .line 165
    iput-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 166
    iput-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 173
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUpdateAttachmentText:Z

    .line 187
    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mRecyclerViewHeight:I

    .line 262
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageSlideEditorActivity$1;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    .line 261
    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 279
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageSlideEditorActivity$2;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    .line 278
    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 93
    return-void
.end method

.method private addAttachment(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 862
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 864
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    .line 866
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_2

    .line 868
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 871
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 918
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MessageSlideEditorActivity addAttachment default type "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 864
    goto :goto_0

    .line 875
    :pswitch_1
    const/16 v0, 0x66

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 874
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_1

    .line 880
    :pswitch_2
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 882
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 885
    const/16 v0, 0x6a

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 886
    const/4 v1, 0x1

    .line 884
    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJZ)V

    goto :goto_1

    .line 889
    :cond_1
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 896
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 897
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 899
    const/16 v1, 0x67

    invoke-direct {p0, p2, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 904
    :pswitch_4
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 906
    const/16 v0, 0x68

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 905
    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJZ)V

    goto :goto_1

    .line 913
    :pswitch_5
    const/16 v0, 0x6b

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 912
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectPhotosAndVideos(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 1198
    if-eqz p2, :cond_3

    .line 1204
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->reset()V

    .line 1208
    :cond_0
    const-string/jumbo v0, "*/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1210
    const-string/jumbo v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    :cond_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isImageFile(Landroid/net/Uri;)Z

    move-result v1

    .line 1210
    if-eqz v1, :cond_4

    .line 1212
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addImage(Landroid/net/Uri;Z)V

    .line 1223
    :cond_3
    :goto_0
    return-void

    .line 1213
    :cond_4
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1214
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1213
    if-nez v1, :cond_6

    .line 1215
    :cond_5
    if-eqz v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isVideoFile(Landroid/net/Uri;)Z

    move-result v1

    .line 1213
    if-eqz v1, :cond_7

    .line 1216
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1217
    :cond_7
    const-string/jumbo v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1218
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAudioUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1217
    if-nez v1, :cond_9

    .line 1219
    :cond_8
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isAudioFile(Landroid/net/Uri;)Z

    move-result v0

    .line 1217
    if-eqz v0, :cond_3

    .line 1220
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addAudio(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private addAudio(Landroid/net/Uri;Z)V
    .locals 7

    .prologue
    const v6, 0x7f070179

    const/4 v5, 0x0

    .line 1407
    if-eqz p1, :cond_5

    .line 1408
    if-eqz p2, :cond_3

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V

    .line 1412
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/mms/model/MediaWithTextModel;

    .line 1413
    new-instance v3, Lcom/android/mms/model/AudioModel;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1412
    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1414
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemInserted(I)V

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    const v0, 0x7f070191

    .line 1418
    const/4 v1, 0x0

    .line 1417
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    if-eqz p2, :cond_2

    .line 1435
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1437
    :cond_2
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "add audio failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    const-string/jumbo v0, "add music failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1422
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I

    move-result v0

    .line 1423
    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    new-instance v1, Lcom/android/mms/model/AudioModel;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->changeAudio(Lcom/android/mms/model/AudioModel;)V

    .line 1426
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1442
    :catch_1
    move-exception v0

    .line 1443
    if-eqz p2, :cond_4

    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1447
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070174

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070176

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    :cond_5
    :try_start_2
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "uri from activity result data is null"

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1449
    :catch_2
    move-exception v0

    .line 1450
    if-eqz p2, :cond_6

    .line 1451
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1454
    :cond_6
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 1455
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1301
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 1303
    if-eqz p2, :cond_3

    .line 1304
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 1307
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/mms/model/MediaWithTextModel;

    .line 1308
    new-instance v3, Lcom/android/mms/model/ImageModel;

    .line 1309
    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    .line 1308
    invoke-direct {v3, p0, p1, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 1307
    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1310
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemInserted(I)V

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const v0, 0x7f070191

    .line 1314
    const/4 v1, 0x0

    .line 1313
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "add image failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    if-eqz p2, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1331
    :cond_2
    const-string/jumbo v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070179

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1317
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I

    move-result v0

    .line 1319
    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    new-instance v1, Lcom/android/mms/model/ImageModel;

    .line 1321
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    .line 1320
    invoke-direct {v1, p0, p1, v2}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->changeImage(Lcom/android/mms/model/ImageModel;)V

    .line 1322
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1335
    :catch_1
    move-exception v0

    .line 1336
    if-eqz p2, :cond_4

    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1340
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070174

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070176

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1346
    :catch_2
    move-exception v0

    .line 1348
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 1349
    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1347
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 1342
    :catch_3
    move-exception v0

    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 1345
    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1343
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 7

    .prologue
    const v6, 0x7f070179

    const/4 v5, 0x0

    .line 1356
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 1358
    if-eqz p2, :cond_3

    .line 1359
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V

    .line 1362
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/mms/model/MediaWithTextModel;

    .line 1363
    new-instance v3, Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 1362
    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemInserted(I)V

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    const v0, 0x7f070191

    .line 1368
    const/4 v1, 0x0

    .line 1367
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    if-eqz p2, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1384
    :cond_2
    const-string/jumbo v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1371
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I

    move-result v0

    .line 1373
    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    new-instance v1, Lcom/android/mms/model/VideoModel;

    .line 1375
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    .line 1374
    invoke-direct {v1, p0, p1, v2}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->changeVideo(Lcom/android/mms/model/VideoModel;)V

    .line 1376
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1388
    :catch_1
    move-exception v0

    .line 1389
    if-eqz p2, :cond_4

    .line 1390
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1393
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070174

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070176

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    :catch_2
    move-exception v0

    .line 1396
    if-eqz p2, :cond_5

    .line 1397
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1400
    :cond_5
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1399
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private calculateRecyclerViewHeight()V
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 790
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 791
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mRecyclerViewHeight:I

    .line 792
    return-void
.end method

.method private changeDotsColor(I)V
    .locals 4

    .prologue
    const v3, 0x7f08004b

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    return-void

    .line 462
    :cond_1
    div-int/lit8 v0, p1, 0x3

    .line 463
    if-lez v0, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 468
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    return-void
.end method

.method private changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p3, p4}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1235
    :cond_0
    invoke-virtual {p3, p4}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    .line 1238
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I

    move-result v1

    .line 1239
    if-eqz v1, :cond_1

    .line 1240
    invoke-virtual {p3, p4}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1241
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p3, p4, v0}, Lcom/android/mms/ui/SlideshowEditor;->addSlide(ILcom/android/mms/model/SlideModel;)Z

    .line 1245
    :cond_1
    return v1
.end method

.method private cleanupSlideshowModel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 246
    iput-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 248
    :cond_0
    return-void
.end method

.method private displayDotsLayout()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 440
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 442
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 443
    const v3, 0x7f070389

    .line 442
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    goto :goto_0

    .line 448
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeDotsColor(I)V

    .line 450
    :cond_2
    return-void
.end method

.method private getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method private getAttachmentMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1120
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1121
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1122
    const-string/jumbo v6, "*/*"

    .line 1125
    const-string/jumbo v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1129
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 1130
    const-string/jumbo v1, "mime_type"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 1129
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1142
    :goto_0
    if-eqz v1, :cond_0

    .line 1144
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1145
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1146
    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachmentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 1162
    :cond_0
    :goto_2
    return-object v6

    .line 1138
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 1139
    goto :goto_0

    .line 1131
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 1137
    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1148
    throw v0

    .line 1153
    :cond_1
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->is3GPP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->is3GPP2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1158
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remap file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    const v0, 0x7f070247

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFromClipboard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1475
    const-string/jumbo v1, ""

    .line 1477
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1478
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_0

    .line 1481
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1482
    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_1

    .line 1485
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 1488
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMakRequestCode(ZI)I
    .locals 1

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 853
    const/high16 v0, 0x10000

    or-int/2addr v0, p2

    return v0

    .line 855
    :cond_0
    return p2
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const v0, 0x7f070248

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRequestCode(I)I
    .locals 1

    .prologue
    .line 847
    const v0, -0x10001

    and-int/2addr v0, p1

    return v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 616
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 611
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
    .line 1500
    add-int/lit16 v0, p1, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    const v0, 0x7f070249

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMultipleMimeTypes(Landroid/content/Intent;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1078
    if-nez p1, :cond_0

    .line 1079
    return-void

    .line 1082
    :cond_0
    const-string/jumbo v0, "*/*"

    .line 1083
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1085
    if-nez v0, :cond_1

    .line 1086
    return-void

    .line 1089
    :cond_1
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1091
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1093
    add-int v3, v2, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v5

    if-le v3, v5, :cond_2

    .line 1094
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v3

    sub-int v0, v3, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1097
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1098
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1097
    const v3, 0x7f070196

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v0

    .line 1106
    :cond_2
    const-string/jumbo v0, "*/*"

    move v3, v1

    move-object v1, v0

    .line 1108
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 1110
    if-eqz v0, :cond_3

    const-string/jumbo v5, "*/*"

    const-string/jumbo v6, "*/*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v0

    .line 1111
    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAttachmentMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    :cond_3
    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1108
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1090
    goto :goto_0

    .line 1116
    :cond_5
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    const-string/jumbo v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 254
    const-string/jumbo v0, "slide_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 257
    const-string/jumbo v0, "slide_index"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    goto :goto_0
.end method

.method private initSlideList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->cleanupSlideshowModel()V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 230
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->displayDotsLayout()V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 232
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 233
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f0a0002

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 402
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 405
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 409
    :cond_0
    const v0, 0x7f0f000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSelectedAttachmentContainer:Landroid/widget/LinearLayout;

    .line 410
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 411
    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    .line 413
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->calculateRecyclerViewHeight()V

    .line 414
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mRecyclerViewHeight:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->resetRecyclerViewHeight(I)V

    .line 416
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lcom/android/mms/ui/MessageSlideEditorActivity$LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZ)V

    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 420
    new-instance v0, Lcom/android/mms/ui/SlidesAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SlidesAdapter;-><init>(Ljava/util/List;Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 422
    return-void
.end method

.method private internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I
    .locals 5

    .prologue
    const v4, 0x7f070179

    const/4 v0, 0x0

    const/4 v1, -0x3

    .line 1252
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1253
    :try_start_0
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 1294
    :goto_0
    return v0

    .line 1254
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1255
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v1

    .line 1266
    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "internalChangeMedia:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    const-string/jumbo v1, "add picture failed"

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1271
    const/4 v0, -0x1

    goto :goto_0

    .line 1256
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1257
    :try_start_1
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 1272
    :catch_1
    move-exception v0

    .line 1273
    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f070174

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070176

    invoke-direct {p0, v3, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    invoke-static {p0, v0, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 1258
    :cond_2
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 1259
    :try_start_2
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVcard(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 1278
    :catch_2
    move-exception v0

    .line 1279
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalChangeMedia:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    const/4 v0, -0x4

    goto :goto_0

    .line 1260
    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 1261
    :try_start_3
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVcal(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 1281
    :catch_3
    move-exception v0

    .line 1282
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "internalChangeMedia: message size is exceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, -0x2

    .line 1288
    const v1, 0x7f070177

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1263
    goto/16 :goto_0

    .line 1290
    :catch_4
    move-exception v0

    .line 1291
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalChangeMedia:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1292
    const/4 v0, -0x5

    goto/16 :goto_0
.end method

.method private isAppendRequest(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAudioFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 1166
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1169
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    return v0
.end method

.method private isImageFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 1174
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1177
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    return v0
.end method

.method private isVideoFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 1182
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1183
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1185
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    return v0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method private pasteFromClipBoard()V
    .locals 2

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getFromClipboard()Ljava/lang/String;

    .line 1496
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPaste(I)V

    .line 1497
    return-void
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 383
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    .line 382
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 384
    return-void
.end method

.method private removeEmptySlideObjects()V
    .locals 1

    .prologue
    .line 757
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageSlideEditorActivity$6;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 769
    return-void
.end method

.method private resetRecyclerViewHeight(I)V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 817
    return-void
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 823
    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 825
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_0

    .line 827
    new-instance v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->setShowMedia(Z)V

    .line 831
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/MessageSlideEditorActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity$7;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 840
    return-void
.end method

.method private showPasteMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1466
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getFromClipboard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateMmsSizeIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1505
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1506
    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1508
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070388

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1509
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->updateTotalMessageSize()V

    .line 1510
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    .line 1512
    if-nez v1, :cond_0

    .line 1513
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1520
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsTextview:[Landroid/widget/TextView;

    .line 1521
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1522
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->displayDotsLayout()V

    .line 1523
    return-void

    .line 1515
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1516
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getSizeWithOverHead(I)I

    move-result v1

    .line 1517
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 1517
    const v1, 0x7f070327

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1066
    const v1, 0x7f0f0157

    .line 1065
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 1068
    instance-of v1, v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    if-eqz v1, :cond_0

    .line 1069
    check-cast v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 1070
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->onKeyEvent()V

    .line 1073
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const v6, 0x7f070179

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 477
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getRequestCode(I)I

    move-result v2

    .line 482
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isAppendRequest(I)Z

    move-result v3

    .line 484
    packed-switch v2, :pswitch_data_0

    .line 588
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  default append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->updateMmsSizeIndicator()V

    .line 593
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->invalidateOptionsMenu()V

    .line 594
    return-void

    .line 487
    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult  REQUEST_CODE_TAKE_PICTURE append = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string/jumbo v2, ".jpg"

    .line 490
    iget v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {v2, v4, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 492
    if-nez v2, :cond_2

    .line 498
    :goto_1
    if-eqz v0, :cond_1

    .line 499
    const-string/jumbo v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 495
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addImage(Landroid/net/Uri;Z)V

    move v0, v1

    goto :goto_1

    .line 508
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_CHANGE_PICTURE append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addImage(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 517
    :pswitch_2
    const/16 v0, 0x67

    if-ne v2, v0, :cond_4

    .line 519
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_ATTACH_SOUND append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 522
    if-nez v0, :cond_3

    .line 523
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 526
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 527
    return-void

    .line 531
    :cond_4
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_RECORD_SOUND append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 535
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addAudio(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 540
    :pswitch_3
    sget-object v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult  REQUEST_CODE_TAKE_VIDEO append = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string/jumbo v2, ".3gp"

    .line 543
    iget v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v2, v4, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 545
    if-nez v2, :cond_6

    .line 551
    :goto_2
    if-eqz v0, :cond_1

    .line 552
    const-string/jumbo v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 548
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addVideo(Landroid/net/Uri;Z)V

    move v0, v1

    goto :goto_2

    .line 562
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_CHANGE_VIDEO append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addVideo(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 568
    :pswitch_5
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_ATTACH_PHOTOS_VIDEOS append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0, p3, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->handleMultipleMimeTypes(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 574
    :pswitch_6
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_REPLACE_PHOTOS_VIDEOS append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz p3, :cond_1

    .line 576
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string/jumbo v1, "images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 578
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addImage(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 579
    :cond_7
    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addVideo(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isSingleSlideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->finish()V

    .line 654
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->resetRecyclerViewHeight(Z)V

    goto :goto_0

    .line 652
    :cond_1
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->setContentView(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "subject_size"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSubjectSize:I

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->initSlideList()V

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Loaded slideshow is empty; can\'t edit nothingness, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->finish()V

    .line 210
    return-void

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->initView()V

    .line 214
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    .line 219
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->updateMmsSizeIndicator()V

    .line 225
    return-void

    .line 216
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    if-gez v0, :cond_2

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->finish()V

    .line 223
    return-void
.end method

.method public onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 736
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity$5;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public onDataLoadFinished()V
    .locals 3

    .prologue
    .line 710
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attachment onDataLoadFinished media list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->removeEmptySlideObjects()V

    .line 712
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->displayDotsLayout()V

    .line 713
    return-void
.end method

.method public onDataRemove(I)V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemRemoved(I)V

    .line 750
    return-void
.end method

.method public onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 687
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/MessageSlideEditorActivity$3;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 703
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDestroy()V

    .line 389
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->cleanupSlideshowModel()V

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public onLoadContainerView(I)V
    .locals 3

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onLoadContainerView(I)V

    .line 663
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attachment no fragment loaded till now onLoadContainerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->changeDotsColor(I)V

    .line 666
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUpdateAttachmentText:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->setMessageText(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUpdateAttachmentText:Z

    .line 675
    iput p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    .line 676
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->invalidateOptionsMenu()V

    .line 677
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1056
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 974
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->previewSlideshow()V

    .line 1059
    :cond_0
    :goto_0
    return v3

    .line 979
    :pswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->addAttachment(IZ)V

    goto :goto_0

    .line 984
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 990
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    const-string/jumbo v1, "image/*;video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const/16 v1, 0x6c

    invoke-direct {p0, v3, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getMakRequestCode(ZI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 997
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 1002
    :pswitch_5
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1003
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUpdateAttachmentText:Z

    .line 1004
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemRemoved(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1010
    if-lez v0, :cond_2

    .line 1011
    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    if-lt v1, v0, :cond_1

    .line 1012
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    .line 1018
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->updateMmsSizeIndicator()V

    goto :goto_0

    .line 1015
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->finish()V

    goto :goto_1

    .line 1024
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 1025
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1026
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlidesAdapter;->notifyDataSetChanged()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->finish()V

    goto :goto_0

    .line 1032
    :pswitch_7
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->pasteFromClipBoard()V

    goto :goto_0

    .line 1037
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1038
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v3}, Landroid/widget/EditText;->setStartIndex(IZ)V

    goto/16 :goto_0

    .line 1043
    :pswitch_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/widget/EditText;->setPerformActionMode(IIZ)V

    goto/16 :goto_0

    .line 1048
    :pswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0, v4}, Lcom/android/mms/model/MediaWithTextModel;->setMessageText(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 348
    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->setMessageText(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 353
    :cond_0
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onPause()V

    .line 356
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 360
    :cond_1
    monitor-enter p0

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 363
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 364
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 371
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    :try_start_2
    sget-object v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot update the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 927
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    return v2

    .line 931
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 934
    const/16 v0, 0x8

    const v1, 0x7f07010a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 935
    const/16 v0, 0x9

    const v1, 0x7f07010b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->showPasteMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 939
    const/4 v0, 0x7

    const v1, 0x7f070109

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 942
    :cond_2
    const v0, 0x7f07019c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 944
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 947
    const/16 v0, 0xa

    const v1, 0x7f070156

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 948
    const v1, 0x7f020086

    .line 947
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 951
    :cond_3
    const v0, 0x7f070160

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 952
    const v0, 0x7f070161

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 954
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 955
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 956
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 957
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 958
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 960
    :cond_4
    const/4 v0, 0x3

    const v1, 0x7f070003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 961
    const/4 v0, 0x4

    const v1, 0x7f070002

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 962
    const/4 v0, 0x5

    const v1, 0x7f070168

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 963
    const/4 v0, 0x6

    .line 964
    const v1, 0x7f070163

    .line 963
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 964
    const v1, 0x7f02007c

    .line 963
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 965
    return v3
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 599
    const/16 v0, 0x7e1

    if-ne p1, v0, :cond_0

    .line 600
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    const v0, 0x7f07036b

    .line 604
    const/4 v1, 0x0

    .line 603
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string/jumbo v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onStart()V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mAttachmentMessageEditor:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 239
    return-void
.end method

.method public resetRecyclerViewHeight(Z)V
    .locals 3

    .prologue
    .line 796
    sget-object v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->TAG:Ljava/lang/String;

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

    .line 797
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 798
    const v1, 0x7f0f0157

    .line 797
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 800
    if-eqz p1, :cond_1

    .line 801
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->resetRecyclerViewHeight(I)V

    .line 802
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPlayMedia()V

    .line 811
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 812
    return-void

    .line 806
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mRecyclerViewHeight:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->resetRecyclerViewHeight(I)V

    .line 807
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onStopMedia()V

    goto :goto_0
.end method

.method public setInitialSlideSize(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 717
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->setInitialSlideSize(I)V

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    .line 720
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    new-instance v2, Lcom/android/mms/model/MediaWithTextModel;

    invoke-direct {v2, v3, v3}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageSlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageSlideEditorActivity$4;-><init>(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 730
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->setEditSlideShowMode(Z)V

    .line 731
    return-void
.end method
