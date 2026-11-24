.class public Lcom/android/mms/ui/MessageListItem;
.super Lcom/android/mms/ui/zoom/ZoomMessageListItem;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$1;,
        Lcom/android/mms/ui/MessageListItem$2;,
        Lcom/android/mms/ui/MessageListItem$3;,
        Lcom/android/mms/ui/MessageListItem$GestureListener;,
        Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;,
        Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;,
        Lcom/android/mms/ui/MessageListItem$LinkAdapter;
    }
.end annotation


# static fields
.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sRcsBurnFlagImage:Landroid/graphics/drawable/Drawable;

.field private static sRcsBurnMessageHasBurnImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAudioDuration:Landroid/widget/TextView;

.field private mAvatar:Lcom/android/mms/ui/QuickContactDivot;

.field private mBackgroundColor:I

.field private mBodyButtomTextView:Landroid/widget/TextView;

.field mBodyTextSpannable:Landroid/text/SpannableString;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBodyTopTextView:Landroid/widget/TextView;

.field mCancelLinstener:Landroid/content/DialogInterface$OnClickListener;

.field private mCheckLinkify:Z

.field private mChecked:Landroid/widget/CheckBox;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateView:Landroid/widget/TextView;

.field private mDeliveredIndicator:Landroid/widget/ImageView;

.field private mDetailsIndicator:Landroid/widget/ImageView;

.field private mDownloadMessage:Landroid/widget/TextView;

.field private mDownloading:Landroid/view/View;

.field private mDownloadingTitle:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mWaveTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsCheck:Z

.field private mIsMsimIccCardActived:Z

.field private mLockedIndicator:Landroid/widget/ImageView;

.field private mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

.field private mManageMode:I

.field public mMessageBlock:Landroid/view/View;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsMultiView:Landroid/view/View;

.field private mMmsSizeTextView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMultiRecipients:Z

.field private mNameView:Landroid/widget/TextView;

.field private mPlayAudioButton:Landroid/widget/ImageView;

.field private mPlayAudioLayout:Landroid/view/ViewGroup;

.field private mPlayVideoPicLayout:Landroid/view/ViewGroup;

.field private mPosition:I

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mRcsContentType:Ljava/lang/String;

.field private mRcsGroupId:J

.field private mRcsIsStopDown:Z

.field private mRcsShowMmsView:Z

.field private mSendFailView:Landroid/widget/TextView;

.field private mShowUseNumberMenu:Z

.field private mSimIndicatorView:Landroid/widget/ImageView;

.field private mSimMessageAddress:Landroid/widget/TextView;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field private mSubjectTextView:Landroid/widget/TextView;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTextView:Landroid/widget/TextView;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mUpdateProgressBar:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

.field private mVCardImageView:Landroid/widget/ImageView;

.field private mVideoPicThumbnail:Landroid/widget/ImageView;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MessageListItem;)Landroid/view/GestureDetector;
    .locals 4

    # PERF(row bind): allocate the detector on the first touch, not while scrolling.
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGestureDetector:Landroid/view/GestureDetector;
    if-nez v0, :ready

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MessageListItem$GestureListener;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$GestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGestureDetector:Landroid/view/GestureDetector;

    :ready
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUpdateProgressBar:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->onUrlClick(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startSelectableCopyActivity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;-><init>(Landroid/content/Context;)V

    .line 151
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsCheck:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsIsStopDown:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    .line 222
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsContentType:Ljava/lang/String;

    .line 963
    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCancelLinstener:Landroid/content/DialogInterface$OnClickListener;

    .line 1489
    new-instance v0, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1498
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1497
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 1500
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2289
    new-instance v0, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    .line 2288
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUpdateProgressBar:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    .line 228
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "MessageListItem with one param"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    # PERF(row inflation): no country query; this row never uses the result.
    .line 232
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsCheck:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsIsStopDown:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    .line 222
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsContentType:Ljava/lang/String;

    .line 963
    new-instance v0, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCancelLinstener:Landroid/content/DialogInterface$OnClickListener;

    .line 1489
    new-instance v0, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1498
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1497
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 1500
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2289
    new-instance v0, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    .line 2288
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mUpdateProgressBar:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    .line 250
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "MessageListItem with two param"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    # PERF(row inflation): no country query; this row never uses the result.
    .line 255
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V
    .locals 4

    .prologue
    # FEAT(imessage): suppress stock "4 Attachments / 117KB" footer when WaveMessageUi renders inline media.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :wave_stock_attach_details

    return-void

    :wave_stock_attach_details
    const v0, 0x7f0f00d7

    .line 2468
    if-eqz p1, :cond_1

    .line 2469
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2470
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2472
    const v0, 0x7f0f0025

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2474
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070388

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    .line 2476
    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2477
    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    .line 2478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2487
    :goto_0
    return-void

    .line 2480
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2484
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2485
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindCommonMessage(Z)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v0, v9, :cond_11

    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 666
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isRcsMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mWaveTextReady:Z
    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_13

    :cond_2
    move v8, v9

    .line 687
    :goto_2
    if-eqz p1, :cond_3

    if-eqz v8, :cond_4

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    .line 689
    if-eqz v1, :cond_14

    move-object v0, v7

    .line 690
    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 692
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->updateBodyTextView()V

    .line 696
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isSimCardMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimMessageAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 699
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v1, v9, :cond_15

    .line 700
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070204

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 704
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 705
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimMessageAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 713
    if-nez v0, :cond_6

    .line 714
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 718
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    .line 714
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 724
    :cond_6
    if-eqz v0, :cond_8

    # PERF(inline text): a nonempty non-RCS body is immediately set again by :cond_1a below.
    # Skip building mBodyTextSpannable + double Linkify (including MAP_ADDRESSES) + double setText
    # for ALL non-RCS messages (SMS and MMS), letting RowTextView linkify once.
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z
    move-result v1
    if-nez v1, :wave_stock_body
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :cond_8

    :wave_stock_body
    .line 725
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextSpannable:Landroid/text/SpannableString;

    .line 726
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextSpannable:Landroid/text/SpannableString;

    invoke-static {v1, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 732
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextSpannable:Landroid/text/SpannableString;

    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string/jumbo v3, "tel:"

    invoke-static {v1, v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 733
    if-eqz p1, :cond_7

    if-eqz v8, :cond_8

    .line 734
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextSpannable:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :cond_8
    if-eqz p1, :cond_9

    if-eqz v8, :cond_a

    .line 740
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 741
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_a

    .line 742
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_16

    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 744
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 743
    invoke-static {v1, v2}, Lcom/android/mms/rcs/RcsUtils;->getCaiYunFileBodyText(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->updateSimIndicatorView(I)V

    .line 766
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setupOnTouchListener()V

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCanClusterWithNextMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 788
    if-eqz p1, :cond_b

    if-eqz v8, :cond_c

    :cond_b
    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 789
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 790
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    .line 791
    if-eq v0, v9, :cond_e

    .line 792
    if-eq v0, v12, :cond_e

    .line 793
    const/16 v1, 0x9

    if-eq v0, v1, :cond_e

    .line 794
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 795
    const v2, 0x7f070280

    .line 794
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isRcsMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 809
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindCommonRcsMessage()V

    .line 811
    :cond_f
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    if-nez v0, :cond_10

    .line 812
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 813
    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 814
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 867
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    # FEAT(imessage): inline media, voice pill, reply quote, edit/unsend/notice bubble polish.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->onBindRow(Lcom/android/mms/ui/MessageListItem;)V

    invoke-static {p0}, Lcom/android/mms/ui/WaveTapbacks;->onBind(Lcom/android/mms/ui/MessageListItem;)V

    .line 869
    # PERF: during ListView.obtainView() (sameItem == false), ListView measures & lays out
    # the row immediately anyway; only requestLayout() on in-place async rebinds (sameItem == true).
    if-eqz p1, :wave_skip_req_layout

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->requestLayout()V

    :wave_skip_req_layout
    .line 870
    return-void

    .line 662
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 670
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_13
    move v8, v10

    .line 678
    goto/16 :goto_2

    .line 689
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto/16 :goto_3

    .line 702
    :cond_15
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_4

    .line 745
    :cond_16
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    .line 746
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 748
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 751
    :cond_18
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 757
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 760
    :cond_1a
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 796
    :cond_1b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;
    move-result-object v0

    goto/16 :goto_6

    .line 799
    :cond_1c
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 800
    const v2, 0x7f070280

    .line 799
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 801
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;
    move-result-object v0

    goto :goto_a

    .line 805
    :cond_1e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 822
    :cond_1f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_21

    .line 823
    if-nez p1, :cond_20

    .line 824
    invoke-virtual {p0, v7, v7}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 826
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V

    .line 831
    :goto_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    # No asynchronous rebind or presenter for a row whose text is already here.
    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mWaveTextReady:Z
    if-nez v1, :goto_9

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_22

    .line 832
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 833
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;I)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    goto/16 :goto_9

    .line 829
    :cond_21
    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    goto :goto_b

    .line 850
    :cond_22
    # PERF(imessage): skip stock MmsThumbnailPresenter when WaveMessageUi draws inline media itself.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-nez v0, :goto_9

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-nez v0, :cond_23

    .line 852
    const-string/jumbo v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    .line 853
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 851
    invoke-static {v0, v1, p0, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 858
    :goto_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    if-nez v0, :cond_24

    .line 859
    new-instance v0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    .line 863
    :goto_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    goto/16 :goto_9

    .line 855
    :cond_23
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->setModel(Lcom/android/mms/model/Model;)V

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_c

    .line 861
    :cond_24
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->reset(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_d
.end method

.method private bindCommonRcsMessage()V
    .locals 9

    .prologue
    const v8, 0x7f07003d

    const v7, 0x7f07003c

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2163
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2164
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getRcsMessageStatusText(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v0

    if-nez v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2211
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    .line 2212
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2211
    invoke-virtual {v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getFileTransferPercent(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 2213
    if-eqz v0, :cond_1

    .line 2214
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2215
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 2216
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2215
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    :cond_1
    :goto_1
    return-void

    .line 2165
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsBurnMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2166
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2168
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    .line 2169
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 2170
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 2171
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2173
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2175
    :cond_5
    if-eq v0, v5, :cond_6

    .line 2176
    if-ne v0, v6, :cond_7

    .line 2178
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    if-nez v0, :cond_8

    .line 2179
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsBurnMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2178
    if-eqz v0, :cond_8

    .line 2180
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2177
    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2181
    :cond_8
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    .line 2182
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2181
    invoke-virtual {v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->hasFileTransferPercent(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2183
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 2184
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    .line 2185
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2184
    invoke-virtual {v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getFileTransferPercent(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 2186
    if-eqz v0, :cond_0

    .line 2187
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2188
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 2189
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2188
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2191
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 2192
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2191
    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2195
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 2196
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isFileDownLoadoK(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2195
    if-eqz v0, :cond_b

    .line 2197
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2198
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 2199
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2200
    const v2, 0x7f070280

    .line 2199
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2201
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2202
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 2204
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgFileSize()I

    move-result v1

    int-to-long v2, v1

    .line 2203
    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->isFileDownBeginButNotEnd(Ljava/lang/String;J)Z

    move-result v0

    .line 2202
    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2218
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 2219
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2218
    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private bindNotifInd()V
    .locals 12

    .prologue
    const v11, 0x7f080049

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 413
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 416
    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->updateSimIndicatorView(I)V

    .line 451
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setupOnTouchListener()V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    const v1, 0x7f070142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 501
    return-void

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f07020c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->getFormatSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 442
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 442
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;
    move-result-object v2

    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 456
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    goto/16 :goto_1

    .line 460
    :sswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v1

    .line 462
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 463
    const/4 v2, 0x3

    .line 462
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 468
    :goto_2
    if-nez v0, :cond_0

    .line 469
    if-eqz v1, :cond_3

    .line 470
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    goto/16 :goto_1

    :cond_2
    move v0, v7

    .line 462
    goto :goto_2

    .line 472
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    const v1, 0x7f070141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_1
        0x81 -> :sswitch_0
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

# PERF(row inflation): these optional assets are only needed when a burn row binds.
.method private waveBurnIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :flag
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sRcsBurnMessageHasBurnImage:Landroid/graphics/drawable/Drawable;
    if-nez v0, :done
    const v1, 0x7f0200e8
    goto :load

    :flag
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sRcsBurnFlagImage:Landroid/graphics/drawable/Drawable;
    if-nez v0, :done
    const v1, 0x7f0200e7

    :load
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz p1, :save_flag
    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sRcsBurnMessageHasBurnImage:Landroid/graphics/drawable/Drawable;
    goto :done

    :save_flag
    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sRcsBurnFlagImage:Landroid/graphics/drawable/Drawable;

    :done
    return-object v0
.end method

.method private bindRcsBurnMessage()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 1991
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 1992
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 1993
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsContentType:Ljava/lang/String;

    .line 1994
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    .line 1995
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 1996
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v0

    const/16 v1, -0x80

    if-ne v0, v1, :cond_2

    .line 2003
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->waveBurnIcon(Z)Landroid/graphics/drawable/Drawable;
    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2007
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2019
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2043
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    return-void

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->waveBurnIcon(Z)Landroid/graphics/drawable/Drawable;
    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private bindRcsMessage()V
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isGroupChatMessageWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->updateGroupMemberDisplayName()V

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsBurnMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1984
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindRcsBurnMessage()V

    .line 1988
    :goto_0
    return-void

    .line 1986
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindRcsNotBurnMessage()V

    goto :goto_0
.end method

.method private bindRcsNotBurnMessage()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 2047
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getContentTypeForMessageItem(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsContentType:Ljava/lang/String;

    .line 2048
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2106
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2108
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    .line 2109
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 2152
    :goto_1
    return-void

    .line 2051
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgBody()Ljava/lang/String;

    move-result-object v0

    .line 2052
    if-eqz v0, :cond_7

    .line 2053
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2055
    :goto_2
    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v8

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsMsgFileSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "KB/ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2057
    const-string/jumbo v2, "s"

    .line 2056
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2058
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessageListItem;->formatAndSetRcsCachedFormattedMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2063
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2067
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2071
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgBody()Ljava/lang/String;

    move-result-object v0

    .line 2074
    if-eqz v0, :cond_6

    .line 2075
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2077
    :goto_3
    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v8

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2079
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2078
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessageListItem;->formatAndSetRcsCachedFormattedMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2084
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2088
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2089
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 2090
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v3

    .line 2089
    invoke-static {v2, v3}, Lcom/android/mms/rcs/RcsUtils;->disposeVcardMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2094
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2096
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 2095
    invoke-static {v0, v2}, Lcom/android/mms/rcs/RcsUtils;->getCaiYunFileBodyText(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 2097
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2101
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2111
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 2112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 2113
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 2116
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2117
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2119
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->setThumbnailForMessageItem(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/ui/MessageItem;)V

    .line 2126
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 2127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2128
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2129
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2135
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2136
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    :goto_5
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    goto/16 :goto_1

    .line 2121
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2122
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2124
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->setThumbnailForMessageItem(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/ui/MessageItem;)V

    goto :goto_4

    .line 2138
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2139
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2141
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    .line 2140
    invoke-static {v0, p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->setRcsImageViewClickListener(Landroid/widget/ImageView;Lcom/android/mms/ui/MessageListItem;)V

    .line 2142
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2148
    :goto_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 2145
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 2144
    invoke-static {v0, p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->setRcsImageViewClickListener(Landroid/widget/ImageView;Lcom/android/mms/ui/MessageListItem;)V

    .line 2146
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2

    .line 2048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mMultiRecipients:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    return-object p1

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 522
    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 521
    const v2, 0x7f070290

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayMultiAttachments(Landroid/widget/LinearLayout;)V
    .locals 14

    .prologue
    const/16 v13, 0x18

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 1196
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getAttachmentsCount()I

    move-result v7

    move v3, v4

    move v0, v4

    .line 1198
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 1201
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Attachment type initSlideShow "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v5, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    const-string/jumbo v5, " position : "

    .line 1201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    iget v5, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 1201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    const-string/jumbo v5, " side size : "

    .line 1201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v5

    .line 1201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v6, v0

    .line 1204
    :goto_1
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v0

    if-ge v5, v0, :cond_f

    .line 1205
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Attachment type initSlideShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1206
    const-string/jumbo v2, " position : "

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1206
    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1206
    const-string/jumbo v2, " side size j : "

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1210
    const v1, 0x7f040029

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1209
    check-cast v0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    .line 1211
    invoke-virtual {v8, v5}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 1212
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1213
    const-string/jumbo v1, "Mms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Attachment type initSlideShow "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1214
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v10, v10, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 1213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1214
    const-string/jumbo v10, "Image processing "

    .line 1213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 1216
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v9

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1254
    :goto_2
    if-gt v7, v12, :cond_0

    .line 1255
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    const/16 v9, 0x400

    if-le v1, v9, :cond_a

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v9

    div-int/lit16 v9, v9, 0x400

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1257
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070135

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1256
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v9

    .line 1256
    invoke-virtual {v0, v1, v9}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setMemorySize(Ljava/lang/String;Z)V

    .line 1265
    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    .line 1266
    if-lt v7, v12, :cond_b

    .line 1267
    if-eqz v6, :cond_1

    .line 1268
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setPadding(IIII)V

    .line 1283
    :cond_1
    :goto_4
    if-le v7, v12, :cond_d

    .line 1284
    const/4 v1, 0x2

    if-ne v6, v1, :cond_d

    .line 1285
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->hideVideoPlayImg()V

    .line 1287
    add-int/lit8 v1, v7, -0x3

    add-int/lit8 v1, v1, 0x1

    .line 1286
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->showMultipleAttachmentViewCount(I)V

    .line 1288
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v7}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1290
    add-int/lit8 v1, v6, 0x1

    .line 1299
    :goto_5
    if-ne v1, v12, :cond_e

    .line 1303
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    .line 1218
    check-cast v1, Lcom/android/mms/model/ImageModel;

    .line 1219
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v9

    invoke-virtual {v0, v11, v9}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1220
    new-instance v9, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v9, p0, v0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V

    invoke-virtual {v1, v9}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_2

    .line 1228
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1229
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVideoView(Z)V

    .line 1230
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    .line 1231
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v9

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    :cond_5
    move-object v1, v2

    .line 1233
    check-cast v1, Lcom/android/mms/model/VideoModel;

    .line 1234
    new-instance v9, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v9, p0, v0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V

    invoke-virtual {v1, v9}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto/16 :goto_2

    .line 1242
    :cond_6
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1243
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAudioView(Z)V

    goto/16 :goto_2

    .line 1244
    :cond_7
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1245
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVcalView(Z)V

    goto/16 :goto_2

    .line 1246
    :cond_8
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1247
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVcardView(Z)V

    goto/16 :goto_2

    .line 1249
    :cond_9
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Attachment type initSlideShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1250
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 1249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1250
    const-string/jumbo v2, "something else "

    .line 1249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1204
    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto/16 :goto_1

    .line 1260
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1261
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070386

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1260
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v9

    .line 1260
    invoke-virtual {v0, v1, v9}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setMemorySize(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1271
    :cond_b
    if-nez v6, :cond_c

    .line 1272
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1274
    :cond_c
    invoke-virtual {v0, v13, v4, v13, v4}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1293
    :cond_d
    add-int/lit8 v1, v6, 0x1

    .line 1294
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1198
    :cond_e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v1, v6

    goto/16 :goto_5
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    .prologue
    const v4, 0x7f0200f8

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1719
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_4

    .line 1720
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1721
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1731
    :cond_0
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_5

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1737
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSentMms()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1759
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_7

    .line 1760
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1765
    :goto_2
    return-void

    .line 1723
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1738
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1739
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_6

    .line 1740
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1741
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1742
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1743
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1746
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1747
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1748
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1763
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private formatAndSetRcsCachedFormattedMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1967
    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSubId:I

    .line 1968
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 1969
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 1970
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1965
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1971
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 1972
    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    # PERF(inline text): ALL plain-text SMS and MMS bodies can return directly without
    # allocating a SpannableStringBuilder unless search highlighting, dual-SIM, or text/html is used.
    if-nez p5, :wave_stock_format
    if-eqz p2, :wave_stock_format
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z
    if-nez v0, :wave_stock_format
    if-eqz p6, :wave_return_plain
    const-string v0, "text/html"
    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :wave_stock_format
    :wave_return_plain
    return-object p2

    :wave_stock_format
    .line 1505
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1507
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    :goto_0
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " displayName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    if-eqz p6, :cond_3

    const-string/jumbo v0, "text/html"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1521
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1522
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1528
    :cond_1
    :goto_1
    if-eqz p5, :cond_4

    .line 1529
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1530
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1531
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1513
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1524
    :cond_3
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1534
    :cond_4
    return-object v1
.end method

.method private getAttachmentsCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 1307
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1308
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1309
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    .line 1311
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1312
    add-int/lit8 v4, v2, 0x1

    .line 1308
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1316
    :cond_1
    return v2

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method private getContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1437
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1440
    if-eqz p2, :cond_1

    const-string/jumbo v1, "text/html"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1441
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1442
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1447
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1444
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private getFormatSize(I)I
    .locals 1

    .prologue
    .line 409
    add-int/lit16 v0, p1, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method private getSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1451
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f070148

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1456
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inflateDownloadControls()V
    .locals 3

    .prologue
    const v2, 0x7f0f00d6

    .line 1460
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1462
    const v0, 0x7f0f00df

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    .line 1464
    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    .line 1465
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    .line 1467
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    const v0, 0x7f0f00ea

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    .line 1483
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private initPlayAudioView(Z)V
    .locals 6

    .prologue
    # FEAT(imessage): suppress stock CD audio box when WaveMessageUi renders inline voice pill.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :wave_stock_play_audio

    return-void

    :wave_stock_play_audio
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    invoke-direct {p0, v2, v1, v2}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 1333
    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v4

    .line 1337
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getSendContactColor()I

    move-result v0

    move v1, v0

    .line 1340
    :goto_0
    const v0, 0x7f0f00f2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0f00f4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDuration:Landroid/widget/TextView;

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDuration:Landroid/widget/TextView;

    const-string/jumbo v5, "00:00"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mAudioDuration:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    const v0, 0x7f08003e

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0f00f3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioButton:Landroid/widget/ImageView;

    .line 1351
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1352
    const v0, 0x7f02009a

    .line 1351
    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1355
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1356
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1357
    const v0, 0x7f020006

    .line 1356
    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1358
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f00ef

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    .line 1371
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_9

    .line 1372
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1373
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070135

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1372
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1379
    const v0, 0x7f080047

    .line 1378
    :goto_5
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1380
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_b

    move v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1383
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    :cond_4
    return-void

    .line 1338
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 1344
    :cond_6
    const v0, 0x7f08003f

    goto/16 :goto_1

    .line 1352
    :cond_7
    const v0, 0x7f02009b

    goto/16 :goto_2

    .line 1357
    :cond_8
    const v0, 0x7f020005

    goto/16 :goto_3

    .line 1375
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1376
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070386

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1379
    :cond_a
    const v0, 0x7f080048

    goto :goto_5

    :cond_b
    move v0, v3

    .line 1381
    goto :goto_6
.end method

.method private initPlayVideoPicView(ZI)V
    .locals 6

    .prologue
    # FEAT(imessage): suppress stock 56x56 photo/video thumbnail box when WaveMessageUi renders inline media.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :wave_stock_play_vidpic

    return-void

    :wave_stock_play_vidpic
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    invoke-direct {p0, v1, v3, v1}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 1401
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    :cond_3
    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    .line 1405
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f00f6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPicThumbnail:Landroid/widget/ImageView;

    .line 1406
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPicThumbnail:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1407
    const v0, 0x7f020006

    .line 1406
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    .line 1409
    const v3, 0x7f0f00f7

    .line 1408
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    .line 1410
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f00ef

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    .line 1420
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/16 v3, 0x400

    if-le v0, v3, :cond_7

    .line 1421
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1422
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070135

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1428
    const v0, 0x7f080047

    .line 1427
    :goto_3
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    :cond_4
    return-void

    .line 1407
    :cond_5
    const v0, 0x7f020005

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1411
    goto :goto_1

    .line 1424
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1425
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070386

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1428
    :cond_8
    const v0, 0x7f080048

    goto :goto_3

    :cond_9
    move v1, v2

    .line 1430
    goto :goto_4
.end method

.method private initSlideShow(Z)V
    .locals 6

    .prologue
    # FEAT(imessage): suppress stock slideshow/multi-attachment box when WaveMessageUi renders inline media.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :wave_stock_slideshow

    return-void

    :wave_stock_slideshow
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 1165
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Attachment type initSlideShow "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1166
    const-string/jumbo v4, " position : "

    .line 1165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1166
    iget v4, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 1165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1180
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1181
    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1182
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    invoke-direct {p0, v2, v5, v2}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1185
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_4

    .line 1186
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Attachment type initSlideShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    const-string/jumbo v3, " position : "

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    const-string/jumbo v3, " size : "

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1190
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->displayMultiAttachments(Landroid/widget/LinearLayout;)V

    .line 1193
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 1181
    goto :goto_0
.end method

.method private isRcsMessage()Z
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsMessage()Z

    move-result v0

    return v0
.end method

.method private isSimCardMessage()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ManageSimMessages;

    return v0
.end method

.method private onUrlClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2306
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2307
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2308
    if-eqz v1, :cond_0

    .line 2310
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    const v0, 0x7f070108

    .line 2313
    const/4 v1, 0x0

    .line 2312
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1574
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1577
    :cond_0
    return-void
.end method

.method private setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1710
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1696
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    # FIX(imessage): the stock image box is never inflated when WaveMessageUi draws the media
    # itself (suppressStockMms), so mImageView can be null here: a photo message crashed the thread.
    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1702
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 1691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setVideoPicThumbnail(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPicThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1002
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1004
    const v1, 0x7f0b0009

    .line 1003
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1005
    int-to-float v1, v0

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 1008
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1009
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1010
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1011
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1014
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1015
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1016
    const/4 v6, 0x1

    move-object v0, p1

    .line 1015
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPicThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupOnTouchListener()V
    .locals 2

    # Reset gesture state on a rebind just as stock does, but reuse the forwarding listener.
    const/4 v0, 0x0
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mWaveTouchListener:Landroid/view/View$OnTouchListener;
    if-nez v1, :attach
    new-instance v1, Lcom/android/mms/ui/MessageListItem$6;
    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V
    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mWaveTouchListener:Landroid/view/View$OnTouchListener;

    :attach
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    return-void
.end method

.method private showDownloadingAttachment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    return-void
.end method

.method private showMmsView(Z)V
    .locals 7

    .prologue
    # FEAT(imessage): suppress stock mms_view/multi_view when WaveMessageUi renders inline media.
    invoke-static {p0}, Lcom/android/mms/ui/WaveMessageUi;->suppressStockMms(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :wave_stock_show_mms

    return-void

    :wave_stock_show_mms
    const v6, 0x7f0f00ed

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 1026
    const-string/jumbo v0, "Mms"

    # PERF(row logging): avoid diagnostic string allocation on normal binds.
    const/4 v3, 0x2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v3
    if-eqz v3, :wave_attachment_log_done
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " showMms view visible "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Attachment type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :wave_attachment_log_done
    .line 1027
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_9

    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1029
    if-eqz p1, :cond_0

    .line 1031
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1032
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    .line 1068
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1121
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1131
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz p1, :cond_17

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1135
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz p1, :cond_18

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    if-nez p1, :cond_7

    .line 1137
    invoke-direct {p0, v1, v5, v1}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1144
    :cond_7
    :goto_3
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1145
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1146
    const v3, 0x7f0b0003

    .line 1145
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1147
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1149
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1150
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessageListItem;->getContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1156
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :goto_5
    return-void

    .line 1037
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 1038
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 1041
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 1043
    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 1048
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    .line 1050
    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 1052
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_c

    .line 1053
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 1055
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 1056
    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    .line 1058
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_e

    .line 1059
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    .line 1062
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 1063
    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVCardImageView:Landroid/widget/ImageView;

    .line 1065
    :cond_f
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_6

    .line 1072
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->initPlayAudioView(Z)V

    goto/16 :goto_3

    .line 1075
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->initPlayVideoPicView(ZI)V

    .line 1076
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1079
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->initPlayVideoPicView(ZI)V

    goto/16 :goto_3

    .line 1082
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayVideoPicLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1086
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1090
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    :cond_15
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 1102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1105
    :cond_16
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    invoke-direct {p0, v1, v5, v1}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    goto/16 :goto_3

    .line 1111
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->initSlideShow(Z)V

    goto/16 :goto_3

    :cond_17
    move v0, v2

    .line 1131
    goto/16 :goto_1

    :cond_18
    move v0, v2

    .line 1135
    goto/16 :goto_2

    .line 1153
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1159
    :cond_1a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1068
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private startSelectableCopyActivity()V
    .locals 4

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 928
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SelectableCopyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    const-string/jumbo v2, "selectable_copy_text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 930
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 931
    return-void
.end method

.method private updateAvatarView(Ljava/lang/String;Z)V
    .locals 13

    .prologue
    # PERF(hidden avatar): ordinary Sonim message rows hide the avatar. For ALL messages
    # (SMS, text MMS, and media MMS), keep the stock bubble tint without fetching a contact,
    # decoding its photo, or building a LetterTileDrawable for a View.GONE avatar.
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 0x8
    if-ne v0, v1, :wave_avatar_stock

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isChecked()Z
    move-result v0
    if-nez v0, :wave_avatar_stock

    if-eqz p2, :wave_avatar_received
    const/4 v0, -0x1    # Color.WHITE (0xffffffff == R.color.white)
    goto :wave_avatar_tint

    :wave_avatar_received
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :wave_avatar_stock
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isSimCardMessage()Z
    move-result v0
    if-nez v0, :wave_avatar_stock
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getSendContactColor()I
    move-result v0

    :wave_avatar_tint
    iget v1, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I
    if-eq v1, v0, :wave_avatar_done
    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :wave_avatar_done
    return-void

    :wave_avatar_stock
    const-wide/16 v4, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QuickContactDivot;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCanClusterWithPreviousMessage()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 539
    if-eqz p2, :cond_3

    invoke-static {v10}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 542
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 546
    const v1, 0x7f0200fd

    .line 545
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 637
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/QuickContactDivot;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/QuickContactDivot;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    :cond_2
    return-void

    .line 539
    :cond_3
    invoke-static {p1, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_4
    if-eqz p2, :cond_8

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    .line 551
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/mms/RcsMyProfileCache;->getInstance(Landroid/widget/ImageView;)Lcom/suntek/rcs/ui/common/mms/RcsMyProfileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/RcsMyProfileCache;->getMyHeadPic()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_12

    .line 554
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 559
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 561
    const v2, 0x7f02001b

    .line 560
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 565
    :goto_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object v7, v0

    move-object v8, v1

    move v0, v2

    .line 616
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 617
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 616
    if-eqz v1, :cond_11

    .line 618
    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I

    .line 620
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v1, v12, :cond_5

    .line 621
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 622
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 631
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v7

    .line 551
    goto :goto_2

    .line 563
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/QuickContactDivot;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v1, v8

    goto :goto_3

    .line 567
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 568
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    .line 569
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 570
    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 571
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    .line 572
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v6, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    move-object v4, p1

    .line 571
    invoke-virtual/range {v1 .. v6}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->loadGroupMemberPhoto(JLjava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 573
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getBitmapByNumber(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 575
    if-eqz v1, :cond_9

    .line 576
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 580
    :cond_9
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 581
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v1}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 583
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 610
    :goto_6
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isSimCardMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_4

    .line 587
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    .line 586
    invoke-static {v1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_6

    .line 590
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QuickContactDivot;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_6

    .line 592
    :cond_c
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 593
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 594
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {v1, v0, v11}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_6

    .line 595
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    .line 597
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    .line 598
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v6, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    move-object v4, p1

    .line 597
    invoke-virtual/range {v1 .. v6}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->loadGroupMemberPhoto(JLjava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/suntek/rcs/ui/common/mms/GroupMemberPhotoCache;->getBitmapByNumber(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 600
    if-eqz v1, :cond_e

    .line 601
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 603
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 604
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {v1, v0, v11}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_6

    .line 606
    :cond_f
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 607
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_6

    .line 613
    :cond_10
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getSendContactColor()I

    move-result v0

    goto/16 :goto_4

    .line 625
    :cond_11
    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v12, :cond_5

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_12
    move-object v0, v7

    goto/16 :goto_2
.end method

.method private updateBodyTextView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 319
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isRcsMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateGroupMemberDisplayName()V
    .locals 5

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1959
    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1958
    invoke-static {v1, v2, v3, v4}, Lcom/suntek/rcs/ui/common/mms/RcsContactsUtils;->getGroupChatMemberDisplayName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1960
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1962
    :cond_0
    return-void
.end method

.method private updateSimIndicatorView(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCanClusterWithNextMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 505
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSimIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;ZIJ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 330
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mRcsShowMmsView:Z

    .line 331
    const-string/jumbo v0, "Mms"

    # PERF(row logging): avoid diagnostic string allocation on normal binds.
    const/4 v2, 0x2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v2
    if-eqz v2, :wave_bind_log_done
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " bind view position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :wave_bind_log_done
    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 338
    :goto_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->updateBodyTextView()V

    .line 342
    iput p3, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 343
    iput-wide p4, p0, Lcom/android/mms/ui/MessageListItem;->mRcsGroupId:J

    .line 344
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mMultiRecipients:Z

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 352
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isRcsMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindRcsMessage()V

    .line 355
    :cond_0
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v1, :pswitch_data_0

    .line 360
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    .line 364
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->customSIMSmsView()V

    .line 366
    invoke-static {}, Lcom/android/mms/MmsConfig;->getZoomMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    # PERF: cached pref_key_zoom_message + pixel-delta check avoids SharedPreferences lock
    # and redundant TextView.setTextSize() layout invalidation on every row bind.
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/WaveMessageUi;->applyZoomTextSize(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 374
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 337
    goto :goto_0

    .line 357
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    goto :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method protected customSIMSmsView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1920
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isSimCardMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1925
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1927
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1930
    :cond_1
    return-void

    .line 1926
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isCdmaInboxMessage()Z

    move-result v0

    .line 1925
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public downloadAttachment()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2227
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 2229
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 2230
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 2229
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 2231
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download notify Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2233
    const v2, 0x7f07013d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2234
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2236
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    .line 2238
    const v2, 0x7f070187

    .line 2237
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2239
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2240
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2241
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2240
    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2242
    return-void

    .line 2245
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMmsMemoryFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2246
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f07023e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2247
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2248
    return-void

    .line 2251
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 2252
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070244

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2254
    return-void

    .line 2257
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2258
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f070243

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2259
    const/4 v2, 0x1

    .line 2258
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    return-void

    .line 2262
    :catch_0
    move-exception v0

    .line 2263
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    return-void

    .line 2266
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2267
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloading:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2269
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingTitle:Landroid/widget/TextView;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2270
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2271
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2272
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    const-string/jumbo v1, "sub_id"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2276
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2278
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 2279
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const/16 v2, 0x83

    .line 2278
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 2280
    return-void
.end method

.method public getBodyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public getRcsContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRcsContentType:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 1894
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsCheck:Z

    return v0
.end method

.method public markAsSelected(Z)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mChecked:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    # PERF: skip redundant CompoundButton.setChecked() when checkbox state already matches.
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 1569
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->unbind()V

    .line 397
    invoke-super {p0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->onDetachedFromWindow()V

    .line 398
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 269
    invoke-super {p0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->onFinishInflate()V

    .line 270
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    const v0, 0x7f0f00da

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    .line 278
    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    .line 279
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendFailView:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    .line 281
    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/QuickContactDivot;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 282
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimIndicatorView:Landroid/widget/ImageView;

    .line 283
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;

    .line 284
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSimMessageAddress:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f0f00e2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mChecked:Landroid/widget/CheckBox;

    .line 286
    const v0, 0x7f0f00d9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mNameView:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QuickContactDivot;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->addZoomableTextView(Landroid/widget/TextView;)V

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTopTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->addZoomableTextView(Landroid/widget/TextView;)V

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyButtomTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->addZoomableTextView(Landroid/widget/TextView;)V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->addZoomableTextView(Landroid/widget/TextView;)V

    .line 296
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1591
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    .line 1592
    if-nez v0, :cond_1

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedRcsTextMessage()Z

    move-result v0

    .line 1591
    if-eqz v0, :cond_3

    .line 1596
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isRcsMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1598
    return-void

    .line 1602
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 1603
    return-void

    .line 1607
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 1608
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1607
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    .line 1614
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1617
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    .line 1619
    new-instance v3, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;

    invoke-direct {v3, p0, v0, v8}, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/text/style/URLSpan;Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1621
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "tel:"

    const-string/jumbo v5, "smsto:"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1623
    :cond_5
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1625
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "mailto:"

    const-string/jumbo v5, "smsto:"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1627
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1631
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1632
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    if-eqz v0, :cond_8

    .line 1633
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    .line 1634
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 1635
    return-void

    .line 1637
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_9

    .line 1638
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    .line 1639
    const/16 v1, 0x83

    .line 1638
    if-eq v0, v1, :cond_9

    .line 1640
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    .line 1641
    const/16 v1, 0x81

    .line 1640
    if-eq v0, v1, :cond_9

    .line 1642
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->downloadAttachment()V

    .line 1688
    :cond_9
    :goto_2
    return-void

    .line 1645
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1646
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    if-eqz v0, :cond_b

    .line 1647
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    .line 1648
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 1649
    return-void

    .line 1653
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageListItem;->onUrlClick(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1655
    :cond_c
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    if-eqz v0, :cond_d

    .line 1656
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    .line 1657
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 1658
    return-void

    .line 1660
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1662
    new-instance v1, Lcom/android/mms/ui/MessageListItem$LinkAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1663
    new-instance v3, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$LinkAdapter;Ljava/util/ArrayList;)V

    .line 1676
    const v2, 0x7f070266

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1677
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1678
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1680
    new-instance v1, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1826
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1832
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 1815
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 1838
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 1844
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 989
    return-void
.end method

.method public setBodyTextSize(F)V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1937
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f080033

    .line 1899
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mIsCheck:Z

    .line 1900
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    .line 1901
    if-eqz v1, :cond_1

    .line 1902
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 1903
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsCheck:Z

    if-eqz v0, :cond_2

    .line 1904
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1906
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPlayAudioLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1913
    :cond_0
    :goto_1
    return-void

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 1911
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1
.end method

.method public setDateViewText(I)V
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1954
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 993
    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 994
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 995
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListItem;->setVideoPicThumbnail(Landroid/graphics/Bitmap;)V

    .line 996
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2465
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1770
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 1775
    return-void
.end method

.method public setIsMsimIccCardActived(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mIsMsimIccCardActived:Z

    .line 246
    return-void
.end method

.method public setMMSAudioPlayer(Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;)V
    .locals 0

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    .line 2286
    return-void
.end method

.method public setManageSelectMode(I)V
    .locals 0

    .prologue
    .line 1542
    iput p1, p0, Lcom/android/mms/ui/MessageListItem;->mManageMode:I

    .line 1543
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 406
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1780
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 1785
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 4

    .prologue
    .line 2428
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 2431
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2432
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2433
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2434
    const v0, 0x7f0200ae

    .line 2433
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2435
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2436
    const v0, 0x7f020006

    .line 2435
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2437
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2438
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2439
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_4

    .line 2442
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2443
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2448
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2449
    const v0, 0x7f080047

    .line 2448
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2450
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2451
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2452
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2453
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 2459
    :cond_1
    :goto_4
    return-void

    .line 2434
    :cond_2
    const v0, 0x7f0200af

    goto/16 :goto_0

    .line 2436
    :cond_3
    const v0, 0x7f020005

    goto :goto_1

    .line 2445
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2446
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2449
    :cond_5
    const v0, 0x7f080048

    goto :goto_3
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1848
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 1851
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1852
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1853
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1854
    const v0, 0x7f0200b1

    .line 1853
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1855
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1856
    const v0, 0x7f020006

    .line 1855
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1857
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1858
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1859
    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    .line 1862
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1863
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 1868
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    .line 1870
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_6

    .line 1871
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1872
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1878
    const v0, 0x7f080047

    .line 1877
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1879
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1882
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsMultiView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->attachmentCountDetails(ZLcom/android/mms/ui/MessageItem;I)V

    .line 1890
    :cond_3
    :goto_4
    return-void

    .line 1854
    :cond_4
    const v0, 0x7f0200b2

    goto/16 :goto_0

    .line 1856
    :cond_5
    const v0, 0x7f020005

    goto/16 :goto_1

    .line 1874
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSizeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1875
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1874
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1886
    :catch_0
    move-exception v0

    .line 1888
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setVcard: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1878
    :cond_7
    const v0, 0x7f080048

    goto :goto_3
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1789
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1793
    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1794
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 1795
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListItem;->setVideoPicThumbnail(Landroid/graphics/Bitmap;)V

    .line 1796
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 1801
    return-void
.end method

.method public showUseNumberMenu(Z)Z
    .locals 1

    .prologue
    .line 1580
    if-nez p1, :cond_0

    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckLinkify:Z

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 1584
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mShowUseNumberMenu:Z

    return v0
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1806
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 1811
    return-void
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 1917
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 392
    :cond_2
    return-void
.end method
