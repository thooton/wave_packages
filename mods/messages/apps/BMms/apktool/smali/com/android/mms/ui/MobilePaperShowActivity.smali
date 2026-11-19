.class public Lcom/android/mms/ui/MobilePaperShowActivity;
.super Landroid/app/Activity;
.source "MobilePaperShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MobilePaperShowActivity$1;,
        Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;
    }
.end annotation


# instance fields
.field private mAsyncQueryHandler:Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;

.field private mCursor:Landroid/database/Cursor;

.field private mDetailsText:Landroid/widget/TextView;

.field private mFontSizeForSave:F

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mMailboxId:I

.field private mNumber:Ljava/lang/String;

.field private mOnScale:Z

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollViewPort:Landroid/widget/ScrollView;

.field private mSlideModel:Lcom/android/mms/model/SlideshowModel;

.field private mSlidePaperItemTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideView:Landroid/widget/FrameLayout;

.field private mStopScaleRunnable:Ljava/lang/Runnable;

.field private mSubject:Ljava/lang/String;

.field private mTempMmsUri:Landroid/net/Uri;

.field private mTempThreadId:J

.field private mUri:Landroid/net/Uri;

.field private mViewAttachmentListener:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MobilePaperShowActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mFontSizeForSave:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MobilePaperShowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mStopScaleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/mms/ui/MobilePaperShowActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mTempThreadId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MobilePaperShowActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mFontSizeForSave:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/MobilePaperShowActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mOnScale:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/MobilePaperShowActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mTempThreadId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->drawRootView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mMailboxId:I

    .line 113
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mFontSizeForSave:F

    .line 122
    new-instance v0, Lcom/android/mms/ui/MobilePaperShowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$1;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mStopScaleRunnable:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method private drawRootView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    .line 255
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v2, v3

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 258
    const v0, 0x7f040039

    .line 257
    invoke-virtual {v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideListItemView;

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideListItemView;->setLayoutModel(I)V

    .line 260
    const-string/jumbo v1, "SlideshowPresenter"

    .line 261
    iget-object v5, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    .line 260
    invoke-static {v1, p0, v0, v5}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 262
    invoke-virtual {v0}, Lcom/android/mms/ui/SlideListItemView;->getContentText()Landroid/widget/TextView;

    move-result-object v5

    .line 263
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v6, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 265
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getTextFontSize(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v5, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    new-instance v1, Lcom/android/mms/ui/MobilePaperShowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$2;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    new-instance v1, Lcom/android/mms/ui/MobilePaperShowActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$3;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    new-instance v1, Lcom/android/mms/ui/MobilePaperShowActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$4;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 295
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 296
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 297
    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const v7, 0x7f070267

    invoke-virtual {p0, v7, v6}, Lcom/android/mms/ui/MobilePaperShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->setDetailsView()V

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScrollViewPort:Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    .line 306
    new-instance v0, Lcom/android/mms/ui/MobilePaperShowActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$5;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScrollViewPort:Landroid/widget/ScrollView;

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScrollViewPort:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mRootView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 353
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 357
    :cond_2
    return-void
.end method

.method private forwardMms()V
    .locals 4

    .prologue
    .line 481
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/android/mms/ui/MobilePaperShowActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$6;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    .line 509
    new-instance v2, Lcom/android/mms/ui/MobilePaperShowActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MobilePaperShowActivity$7;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    .line 529
    const v3, 0x7f070199

    .line 481
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 530
    return-void
.end method

.method private getMmsMessageBoxID(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 451
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "msg_box"

    aput-object v0, v3, v2

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    .line 450
    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_1

    .line 454
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 455
    return v0

    .line 458
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 457
    :catchall_0
    move-exception v0

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    throw v0
.end method

.method private initSlideModel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/mms/model/SlideModel;

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 181
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 186
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSubject:Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSubject:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://mms-sms/mailbox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mMailboxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;

    .line 202
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 201
    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mAsyncQueryHandler:Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mAsyncQueryHandler:Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 204
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 205
    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pdu._id= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    iget-object v5, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    const-string/jumbo v7, "normalized_date DESC"

    .line 203
    const/16 v1, 0x1a2e

    .line 206
    const/4 v6, 0x0

    .line 203
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 194
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string/jumbo v1, "MobilePaperShowActivity"

    const-string/jumbo v2, "Cannot present the slide show."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const v0, 0x7f0702e3

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->finish()V

    .line 213
    return-void

    .line 197
    :cond_2
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isAllowForwardMessage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v2

    .line 366
    const v0, 0x7f07017e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSubject:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    .line 368
    :goto_0
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 369
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, -0x400

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private markAsReadIfNeed()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "unread"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 221
    const-string/jumbo v0, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string/jumbo v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    .line 223
    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    const-wide/16 v0, -0x2

    .line 226
    invoke-static {p0, v0, v1, v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 230
    :cond_0
    return-void
.end method

.method private replyMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v1, "msg_reply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const-string/jumbo v1, "reply_message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private setDetailsView()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mCursor:Landroid/database/Cursor;

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    .line 240
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mDetailsText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public static viewMmsMessageAttachmentSliderShow(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 468
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 469
    :goto_0
    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 470
    :cond_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 478
    :goto_1
    return-void

    .line 468
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 472
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "mms_report"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    const-string/jumbo v1, "sms_id_list"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->setContentView(I)V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mHandler:Landroid/os/Handler;

    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mIntent:Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getMmsMessageBoxID(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mMailboxId:I

    .line 163
    const v0, 0x7f0f0107

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mRootView:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f0f0108

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mDetailsText:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mNumber:Ljava/lang/String;

    .line 166
    const v0, 0x7f0f0106

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mSlideView:Landroid/widget/FrameLayout;

    .line 167
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->initSlideModel()V

    .line 169
    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->markAsReadIfNeed()V

    .line 171
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 173
    const v1, 0x7f0701ff

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const v5, 0x7f07011e

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mMailboxId:I

    if-ne v3, v0, :cond_0

    .line 375
    const/4 v0, 0x3

    const v1, 0x7f0702df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isRecipientCallable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    const v1, 0x7f020079

    .line 377
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    :cond_0
    const/4 v0, 0x4

    const v1, 0x7f07013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 384
    const v0, 0x7f07012f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 385
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 418
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 392
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mUri:Landroid/net/Uri;

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "sms_id_list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "mms_report"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p0

    move-object v3, v2

    .line 392
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MobilePaperShowActivity;->viewMmsMessageAttachmentSliderShow(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 397
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mNumber:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->replyMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->finish()V

    goto :goto_0

    .line 402
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->dialNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->isAllowForwardMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const v0, 0x7f070328

    .line 406
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return v5

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->forwardMms()V

    goto :goto_0

    .line 413
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity;->finish()V

    goto :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 538
    const/16 v0, 0x7e1

    if-ne p1, v0, :cond_0

    .line 539
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mViewAttachmentListener:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->save()V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const v0, 0x7f07036b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 235
    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mFontSizeForSave:F

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->saveTextFontSize(Landroid/content/Context;F)V

    .line 236
    return-void
.end method

.method public setViewAttachmentListener(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity;->mViewAttachmentListener:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    .line 534
    return-void
.end method
