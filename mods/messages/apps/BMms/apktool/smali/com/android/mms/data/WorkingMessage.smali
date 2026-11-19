.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String;

.field public static mCurrentConvSubId:I

.field private static sMmsEnabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAttachmentType:I

.field private mCloudFileId:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mDuration:I

.field private volatile mHasMmsDraft:Z

.field private mHasRcsAttach:Z

.field private volatile mHasSmsDraft:Z

.field private mIsBurn:Z

.field private mIsCacheRcsMessage:Z

.field private mIsRcs:Z

.field private mIsRecord:Z

.field private mIsRequiringRcsAttachment:Z

.field private mLatitude:D

.field private mLocation:Ljava/lang/String;

.field private mLongitude:D

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mRcsEmoId:Ljava/lang/String;

.field private mRcsEmoName:Ljava/lang/String;

.field private mRcsPath:Ljava/lang/String;

.field private mRcsType:I

.field private mResendMultiRecipients:Z

.field private mScaling:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mVcardPath:Ljava/lang/String;

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->closePreOpenedFiles(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->preSendRcsSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 190
    new-array v0, v4, [Ljava/lang/String;

    .line 191
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "m_size"

    aput-object v1, v0, v3

    .line 190
    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 196
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    sput v0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    .line 1748
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1749
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 1750
    const-string/jumbo v1, "sub"

    aput-object v1, v0, v3

    .line 1751
    const-string/jumbo v1, "sub_cs"

    aput-object v1, v0, v4

    .line 1748
    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1919
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mHasRcsAttach:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mIsRcs:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mIsRecord:Z

    .line 290
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 291
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 292
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 293
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 294
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 295
    return-void
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1467
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1468
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 1469
    array-length v3, v2

    move v0, v1

    .line 1470
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1471
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1472
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1473
    invoke-static {v4, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 1474
    aget v4, v4, v1

    if-le v4, v6, :cond_1

    .line 1475
    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1476
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1477
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1478
    return v6

    .line 1470
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    :cond_2
    return v1
.end method

.method private appendMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 732
    if-nez p1, :cond_0

    .line 733
    return v2

    .line 736
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->needAddNewSlide(I)Z

    move-result v0

    .line 737
    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070191

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 741
    return v2

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 745
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/mms/data/WorkingMessage;->internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I

    move-result v2

    .line 746
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {p3, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 753
    :cond_2
    return v2
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 2028
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    const-string/jumbo v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2031
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2036
    const-string/jumbo v2, "WorkingMessage.asyncDelete"

    .line 2031
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2037
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 6

    .prologue
    .line 2056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2058
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2063
    return-void

    .line 2061
    :cond_0
    const-string/jumbo v0, " IS NULL"

    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1840
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    const-string/jumbo v0, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 1846
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Ljava/util/HashMap;Lcom/android/mms/data/Conversation;Z)V

    .line 1877
    const-string/jumbo v0, "WorkingMessage.asyncUpdateDraftMmsMessage"

    .line 1846
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1878
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1984
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;)V

    .line 2002
    const-string/jumbo v2, "WorkingMessage.asyncUpdateDraftSmsMessage"

    .line 1984
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2003
    return-void
.end method

.method private cancelThumbnailLoading()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 621
    :cond_0
    if-lez v0, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 627
    :cond_1
    return-void
.end method

.method private changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p3, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 664
    :cond_0
    invoke-virtual {p3, v2}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    .line 665
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 668
    if-nez v1, :cond_1

    .line 669
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v2

    .line 677
    :cond_1
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 680
    if-nez p1, :cond_2

    .line 681
    return v2

    .line 684
    :cond_2
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/data/WorkingMessage;->internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I

    move-result v1

    .line 685
    if-eqz v1, :cond_3

    .line 686
    invoke-virtual {p3, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 687
    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p3, v2, v0}, Lcom/android/mms/ui/SlideshowEditor;->addSlide(ILcom/android/mms/model/SlideModel;)Z

    .line 691
    :cond_3
    return v1
.end method

.method private checkConversationHasRecipients(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 964
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConversation do not has Recipients: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    const-string/jumbo v2, ";"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 968
    invoke-static {v2, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 970
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 971
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 973
    :cond_1
    return-void
.end method

.method private static closePreOpenedFiles(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1903
    if-nez p0, :cond_0

    .line 1904
    return-void

    .line 1906
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1908
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1909
    if-eqz v0, :cond_1

    .line 1911
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1912
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1916
    :cond_2
    return-void
.end method

.method private correctAttachmentState(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 339
    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v3, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 359
    return-void

    .line 341
    :cond_1
    if-le v0, v2, :cond_2

    .line 342
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 350
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 351
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 353
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1820
    if-nez p2, :cond_0

    .line 1821
    return-object v7

    .line 1824
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 1825
    invoke-virtual {p1, v6}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1826
    if-nez p3, :cond_1

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 1827
    :goto_0
    invoke-static {p4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 1826
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    .line 1829
    invoke-virtual {p2, v6}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    return-object v0

    :cond_1
    move-object v2, p3

    .line 1826
    goto :goto_0

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to create draft mms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return-object v7

    .line 1831
    :catch_1
    move-exception v0

    .line 1832
    return-object v7
.end method

.method public static createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 303
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 2051
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2052
    const-string/jumbo v3, "type=3"

    const/4 v4, 0x0

    .line 2050
    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2053
    return-void
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    .line 1194
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "-- mWorkingRecipients:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1198
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1199
    const-string/jumbo v3, "Mms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1201
    :cond_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 648
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 649
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 651
    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 652
    return-void
.end method

.method private ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V
    .locals 1

    .prologue
    .line 2080
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2087
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 2089
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2090
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 2092
    :cond_1
    return-void
.end method

.method private hasMmsContentToSave()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1268
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_0

    .line 1269
    return v2

    .line 1271
    :cond_0
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1274
    return v2

    .line 1276
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x3

    const/4 v4, 0x2

    .line 760
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 761
    :try_start_0
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    :goto_0
    move v1, v0

    .line 815
    :cond_0
    :goto_1
    return v1

    .line 762
    :cond_1
    if-ne p1, v4, :cond_2

    .line 763
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    const-string/jumbo v1, "Mms"

    const-string/jumbo v3, "internalChangeMedia:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 775
    goto :goto_1

    .line 764
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 765
    :try_start_1
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 776
    :catch_1
    move-exception v0

    .line 777
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/android/mms/UnsupportContentTypeException;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getUsedCreationMode()I

    move-result v2

    .line 784
    if-ne v2, v4, :cond_0

    .line 785
    invoke-static {}, Lcom/google/android/mms/ContentType;->getSupportedTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 784
    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 784
    if-eqz v0, :cond_0

    .line 788
    const/4 v1, -0x6

    goto :goto_1

    .line 766
    :cond_3
    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 767
    :try_start_2
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVcard(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 792
    :catch_2
    move-exception v0

    .line 793
    const-string/jumbo v1, "Mms"

    const-string/jumbo v3, "internalChangeMedia:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    const/4 v1, -0x2

    .line 795
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/android/mms/ExceedMessageSizeException;->getMmsSize()I

    move-result v0

    .line 797
    if-eq v0, v2, :cond_0

    .line 798
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getUsedCreationMode()I

    move-result v2

    .line 800
    if-ne v2, v4, :cond_0

    .line 801
    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 800
    if-eqz v0, :cond_0

    .line 804
    const/4 v1, -0x7

    goto/16 :goto_1

    .line 768
    :cond_4
    const/4 v3, 0x6

    if-ne p1, v3, :cond_5

    .line 769
    :try_start_3
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVcal(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 808
    :catch_3
    move-exception v0

    .line 809
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "internalChangeMedia:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    const/4 v1, -0x4

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 771
    goto/16 :goto_0

    .line 811
    :catch_4
    move-exception v0

    .line 812
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "internalChangeMedia:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    const/4 v1, -0x5

    goto/16 :goto_1
.end method

.method public static load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 314
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string/jumbo v1, "load: moving %s to drafts"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_0
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 325
    :cond_1
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 326
    invoke-direct {v0, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iput-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 328
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v0, "Can\'t move %s to drafts"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    return-object v5

    .line 331
    :cond_2
    return-object v5
.end method

.method public static loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 386
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "loadDraft %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 390
    if-eqz p2, :cond_1

    .line 391
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 393
    :cond_1
    return-object v0

    .line 396
    :cond_2
    new-instance v1, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 441
    return-object v0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 362
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "loadFromUri %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 373
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 374
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 376
    return v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string/jumbo v0, "Couldn\'t load URI %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    return v3
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 6

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 1802
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1803
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1804
    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1808
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1809
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1812
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1814
    return-object v1
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;)V
    .locals 8

    .prologue
    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1730
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1733
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1734
    const-string/jumbo v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1735
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1736
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 1737
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 1738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1736
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1742
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private needAddNewSlide(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 698
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 699
    if-lt v0, v2, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    .line 703
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    .line 704
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    .line 715
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isMediaPresent()Z

    move-result v0

    .line 716
    if-eqz v0, :cond_0

    .line 717
    return v2

    .line 719
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 722
    :cond_1
    return v2
.end method

.method private preSendRcsSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Ljava/lang/NumberFormatException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 2332
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2333
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2336
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 2337
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    .line 2340
    xor-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_2

    .line 2341
    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2344
    :cond_0
    cmp-long v5, v0, v6

    if-eqz v5, :cond_3

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    .line 2345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2348
    const-string/jumbo v1, " new threadId: "

    .line 2345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2350
    const-string/jumbo v1, " also mConversation.getThreadId(): "

    .line 2345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2351
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2345
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2356
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 2365
    :goto_1
    return-void

    .line 2342
    :cond_1
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    if-nez v5, :cond_2

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 2343
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 2340
    if-nez v5, :cond_0

    .line 2358
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    if-eqz v0, :cond_4

    .line 2359
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendRcsSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    goto :goto_1

    .line 2352
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Recipients in window: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2353
    const-string/jumbo v1, "\" differ from recipients from conv: \""

    .line 2352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2353
    const-string/jumbo v1, "\""

    .line 2352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2362
    :cond_4
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendRcsSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1490
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1492
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1494
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1497
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 1499
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    .line 1502
    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 1505
    :cond_0
    cmp-long v5, v0, v6

    if-eqz v5, :cond_3

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    .line 1506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1508
    const-string/jumbo v1, " new threadId: "

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1509
    const-string/jumbo v1, " also mConversation.getThreadId(): "

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1510
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1506
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1531
    :goto_1
    return-void

    .line 1503
    :cond_1
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    if-nez v5, :cond_2

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1504
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1502
    if-nez v5, :cond_0

    .line 1521
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    if-eqz v0, :cond_4

    .line 1522
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    .line 1529
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    goto :goto_1

    .line 1512
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Recipients in window: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1513
    const-string/jumbo v1, "\" differ from recipients from conv: \""

    .line 1512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1514
    const-string/jumbo v1, "\""

    .line 1512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1525
    :cond_4
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method private prepareForSave(Z)V
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 945
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->hasMmsContentToSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 947
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 949
    :cond_0
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1759
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readDraftMmsMessage conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1767
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    .line 1766
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1769
    if-nez v1, :cond_1

    .line 1770
    return-object v5

    .line 1775
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1776
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 1777
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1776
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1778
    const/4 v2, 0x1

    .line 1779
    const/4 v3, 0x2

    .line 1778
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 1780
    if-eqz v2, :cond_2

    .line 1781
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    :cond_2
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1784
    const-string/jumbo v2, "readDraftMmsMessage uri: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1786
    return-object v0

    .line 1789
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1792
    return-object v5

    .line 1788
    :catchall_0
    move-exception v0

    .line 1789
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1788
    throw v0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1928
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1929
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1930
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readDraftSmsMessage conv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1934
    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    .line 1937
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1938
    const-string/jumbo v9, ""

    .line 1940
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 1941
    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "type=3"

    move-object v6, v5

    .line 1940
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1943
    if-eqz v2, :cond_6

    .line 1945
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1946
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    move v0, v7

    .line 1950
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1957
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1958
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1964
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1966
    :cond_3
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1967
    const-string/jumbo v0, "readDraftSmsMessage haveDraft: "

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    :cond_4
    return-object v1

    .line 1949
    :catchall_0
    move-exception v0

    .line 1950
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1949
    throw v0

    :cond_5
    move v0, v8

    move-object v1, v9

    goto :goto_0

    :cond_6
    move v0, v8

    move-object v1, v9

    goto :goto_1
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 934
    :cond_0
    return-void
.end method

.method public static removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 488
    if-eqz p0, :cond_2

    .line 489
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v3

    .line 490
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    .line 492
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 494
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 498
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    move v0, v2

    .line 499
    goto :goto_1

    .line 502
    :cond_1
    if-eqz v1, :cond_2

    .line 508
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V

    .line 511
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 18

    .prologue
    .line 1555
    const/4 v11, 0x0

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getHasMmsForward()Z

    move-result v15

    .line 1558
    const/4 v4, 0x0

    .line 1559
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    .line 1560
    if-eqz v5, :cond_14

    .line 1561
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v5

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getForwardRecipientNumber()[Ljava/lang/String;

    move-result-object v6

    .line 1563
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 1564
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_7

    .line 1565
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1566
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1567
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1568
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1569
    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1570
    const/4 v4, 0x1

    move v14, v4

    .line 1576
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1581
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v16

    .line 1582
    if-eqz v15, :cond_0

    if-eqz v14, :cond_0

    .line 1583
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->sSameRecipientList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    :cond_0
    const-string/jumbo v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1588
    const-string/jumbo v5, " threadId: "

    .line 1587
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1592
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v4

    .line 1593
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 1597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/data/Conversation;->verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1599
    const-string/jumbo v6, "Mms"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendMmsWorker: newAddress "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1601
    const-string/jumbo v7, " dests[0]: "

    .line 1600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1601
    const/4 v7, 0x0

    aget-object v7, v4, v7

    .line 1600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    :cond_2
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1605
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1606
    invoke-static {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1607
    if-eqz v4, :cond_4

    .line 1608
    const-string/jumbo v6, "Mms"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1609
    const-string/jumbo v6, "sendMmsWorker: REPLACING number!!!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1614
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1, v5}, Lcom/android/mms/ui/MessageUtils;->markAsNotificationThreadIfNeed(Landroid/content/Context;JLjava/lang/String;)V

    .line 1616
    :cond_5
    if-nez p2, :cond_8

    const/4 v4, 0x1

    move v13, v4

    .line 1617
    :goto_1
    if-eqz v13, :cond_13

    .line 1619
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1620
    const-string/jumbo v5, "msg_box"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    const-string/jumbo v5, "thread_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1622
    const-string/jumbo v5, "m_type"

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    if-eqz p6, :cond_6

    .line 1624
    const-string/jumbo v5, "text_only"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    .line 1627
    const-string/jumbo v5, "sub_id"

    sget v6, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1635
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 1643
    sget-object v6, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1642
    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1644
    if-eqz v5, :cond_d

    .line 1645
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v4

    .line 1646
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v6

    .line 1645
    mul-int/2addr v4, v6

    int-to-long v8, v4

    .line 1647
    const-wide/16 v6, 0x0

    .line 1648
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1649
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_4

    :cond_7
    move v14, v4

    .line 1564
    goto/16 :goto_0

    .line 1616
    :cond_8
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_1

    .line 1629
    :cond_9
    :try_start_2
    const-string/jumbo v5, "sub_id"

    .line 1630
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1629
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1658
    :catchall_0
    move-exception v4

    move-object v5, v11

    .line 1659
    :goto_5
    if-eqz v5, :cond_a

    .line 1660
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1658
    :cond_a
    throw v4

    .line 1651
    :cond_b
    cmp-long v4, v6, v8

    if-ltz v4, :cond_d

    .line 1652
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V

    .line 1654
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1659
    if-eqz v5, :cond_c

    .line 1660
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1655
    :cond_c
    return-void

    .line 1659
    :cond_d
    if-eqz v5, :cond_e

    .line 1660
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1665
    :cond_e
    if-eqz v13, :cond_11

    .line 1668
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object v7, v12

    .line 1667
    invoke-static/range {v4 .. v9}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 1675
    :goto_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1677
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1696
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1697
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    .line 1698
    const-string/jumbo v4, "sub_id"

    sget v5, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1704
    new-instance v4, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 1705
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    int-to-long v7, v7

    sget v9, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    .line 1704
    invoke-direct/range {v4 .. v9}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 1707
    :try_start_5
    move-wide/from16 v0, v16

    invoke-interface {v4, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1714
    :cond_f
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1718
    :goto_8
    if-eqz v15, :cond_10

    if-eqz v14, :cond_10

    .line 1719
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->sSameRecipientList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1721
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/MessageUtils;->updateThreadAttachTypeByThreadId(Landroid/content/Context;J)V

    .line 1723
    return-void

    .line 1671
    :cond_11
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v12, v0, v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v12

    goto/16 :goto_6

    .line 1676
    :catchall_1
    move-exception v4

    .line 1677
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1676
    throw v4

    .line 1700
    :cond_12
    const-string/jumbo v4, "sub_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 1715
    :catch_0
    move-exception v4

    .line 1716
    const-string/jumbo v5, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to send message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", threadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1658
    :catchall_2
    move-exception v4

    goto/16 :goto_5

    :cond_13
    move-object/from16 v12, p2

    goto/16 :goto_3

    :cond_14
    move v14, v4

    goto/16 :goto_0
.end method

.method private sendRcsAudio([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, -0x1

    .line 2501
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getDuration()I

    move-result v7

    .line 2502
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2504
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2505
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2507
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2508
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    .line 2509
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    move-object v1, p4

    .line 2508
    invoke-virtual/range {v1 .. v8}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendAudioToGroupChat(JJLjava/lang/String;IZ)J

    .line 2523
    :goto_0
    return-void

    .line 2510
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2511
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    .line 2512
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v3, p4

    move-wide v4, p2

    .line 2511
    invoke-virtual/range {v3 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendAudioToPc(JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_1
    move v9, v0

    .line 2513
    goto :goto_1

    .line 2514
    :cond_2
    array-length v1, p1

    if-ne v1, v9, :cond_4

    .line 2515
    const/4 v1, 0x0

    aget-object v3, p1, v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2516
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move-object v2, p4

    move-wide v4, p2

    .line 2515
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendAudio(Ljava/lang/String;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_3
    move v9, v0

    .line 2517
    goto :goto_2

    .line 2519
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2520
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    move-object v2, p4

    move-wide v4, p2

    .line 2519
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendAudio(Ljava/util/List;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_5
    move v9, v0

    .line 2521
    goto :goto_3
.end method

.method private sendRcsCloudFile([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 2417
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2419
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2420
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v6

    .line 2421
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getCloudFileId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object v1, p4

    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->shareFileAndSendGroup(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 2433
    :goto_0
    return-void

    .line 2422
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2423
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getCloudFileId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    aget-object v3, p1, v0

    .line 2424
    const-string/jumbo v6, ""

    move-object v0, p4

    move-wide v4, p2

    .line 2423
    invoke-virtual/range {v0 .. v7}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->shareFileAndSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_0

    .line 2426
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2427
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 2428
    aget-object v1, p1, v0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2430
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getCloudFileId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 2431
    const-string/jumbo v6, ""

    move-object v0, p4

    move-wide v4, p2

    .line 2430
    invoke-virtual/range {v0 .. v7}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->shareFileAndSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;I)V

    goto :goto_0
.end method

.method private sendRcsImage([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2554
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2556
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2557
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2558
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScalingToInt()I

    move-result v7

    move-object v1, p4

    .line 2557
    invoke-virtual/range {v1 .. v8}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendImageToGroupChat(JJLjava/lang/String;IZ)J

    .line 2572
    :goto_0
    return-void

    .line 2559
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2560
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScalingToInt()I

    move-result v7

    .line 2561
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v3, p4

    move-wide v4, p2

    .line 2560
    invoke-virtual/range {v3 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendImageToPc(JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_1
    move v9, v0

    .line 2562
    goto :goto_1

    .line 2563
    :cond_2
    array-length v1, p1

    if-ne v1, v9, :cond_4

    .line 2564
    aget-object v3, p1, v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScalingToInt()I

    move-result v7

    .line 2565
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move-object v2, p4

    move-wide v4, p2

    .line 2564
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendImage(Ljava/lang/String;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_3
    move v9, v0

    .line 2566
    goto :goto_2

    .line 2568
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2569
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScalingToInt()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    move-object v2, p4

    move-wide v4, p2

    .line 2568
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendImage(Ljava/util/List;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_5
    move v9, v0

    .line 2570
    goto :goto_3
.end method

.method private sendRcsLocation([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 2478
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2480
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2481
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2483
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLatitude()D

    move-result-wide v6

    .line 2484
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLongitude()D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLocation()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v1, p4

    .line 2483
    invoke-virtual/range {v1 .. v10}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendLocationToGroupChat(JJDDLjava/lang/String;)J

    .line 2496
    :goto_0
    return-void

    .line 2485
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2486
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLocation()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p4

    move-wide v2, p2

    invoke-virtual/range {v1 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendLocationToPc(JDDLjava/lang/String;I)J

    goto :goto_0

    .line 2488
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2489
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLongitude()D

    move-result-wide v6

    .line 2490
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLocation()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    move-wide v2, p2

    .line 2489
    invoke-virtual/range {v0 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendLocation(Ljava/lang/String;JDDLjava/lang/String;I)J

    goto :goto_0

    .line 2492
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLatitude()D

    move-result-wide v4

    .line 2493
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getLocation()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    move-wide v2, p2

    .line 2492
    invoke-virtual/range {v0 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendLocation(Ljava/util/List;JDDLjava/lang/String;I)J

    goto :goto_0
.end method

.method private sendRcsMessage(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2119
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->shouldSendRcsMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    return-void

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 2124
    if-nez v0, :cond_1

    .line 2125
    return-void

    .line 2127
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2128
    :cond_2
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2130
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$7;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string/jumbo v1, "WorkingMessage.send SMS"

    .line 2130
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2143
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 2145
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2146
    return-void

    .line 2147
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2149
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2151
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$8;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage$8;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    const-string/jumbo v1, "WorkingMessage.send SMS"

    .line 2151
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2164
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 2165
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2166
    return-void

    .line 2168
    :cond_4
    return-void
.end method

.method private sendRcsPaidEmo([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x1

    .line 2437
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2439
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2440
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2441
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    .line 2442
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoName()Ljava/lang/String;

    move-result-object v7

    move-object v1, p4

    .line 2441
    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendEmoticonToGroupChat(JJLjava/lang/String;Ljava/lang/String;)J

    .line 2452
    :goto_0
    return-void

    .line 2443
    :cond_0
    array-length v1, p1

    if-ne v1, v6, :cond_2

    .line 2444
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoName()Ljava/lang/String;

    move-result-object v5

    .line 2445
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v0, p4

    move-wide v2, p2

    .line 2444
    invoke-virtual/range {v0 .. v6}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendEmoticon(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)J

    goto :goto_0

    :cond_1
    move v6, v0

    .line 2446
    goto :goto_1

    .line 2448
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoId()Ljava/lang/String;

    move-result-object v4

    .line 2449
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsEmoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move-object v0, p4

    move-wide v2, p2

    .line 2448
    invoke-virtual/range {v0 .. v6}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendEmoticon(Ljava/util/List;JLjava/lang/String;Ljava/lang/String;I)J

    goto :goto_0

    :cond_3
    move v6, v0

    .line 2450
    goto :goto_2
.end method

.method private sendRcsSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Ljava/lang/NumberFormatException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    .line 2371
    const-string/jumbo v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2372
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v6

    .line 2373
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getInstance()Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;

    move-result-object v0

    .line 2374
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsType:I

    packed-switch v1, :pswitch_data_0

    .line 2410
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2411
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 2412
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2413
    return-void

    .line 2376
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 2377
    invoke-direct/range {v1 .. v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsText(Ljava/lang/String;[Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2380
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2381
    invoke-direct {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsImage([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2384
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2385
    invoke-direct {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsVideo([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2388
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2389
    invoke-direct {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsAudio([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2392
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2393
    invoke-direct {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsLocation([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2396
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2397
    invoke-virtual {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsVcard([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2400
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2401
    invoke-direct {p0, v3, p3, p4, v6}, Lcom/android/mms/data/WorkingMessage;->sendRcsPaidEmo([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V

    goto :goto_0

    .line 2404
    :pswitch_8
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreRcsMessageSent()V

    .line 2405
    invoke-direct {p0, v3, p3, p4, v0}, Lcom/android/mms/data/WorkingMessage;->sendRcsCloudFile([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;)V

    goto :goto_0

    .line 2374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private sendRcsText(Ljava/lang/String;[Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 2577
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2579
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2580
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2581
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    move-object v1, p5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendTextToGroupChat(JJLjava/lang/String;)J

    .line 2593
    :goto_0
    return-void

    .line 2583
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2584
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p5, p3, p4, p1, v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendTextToPc(JLjava/lang/String;I)J

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2585
    goto :goto_1

    .line 2586
    :cond_2
    array-length v1, p2

    if-ne v1, v0, :cond_4

    .line 2587
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v3

    if-eqz v3, :cond_3

    move v5, v0

    :goto_2
    move-object v0, p5

    move-wide v2, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendText(Ljava/lang/String;JLjava/lang/String;I)J

    goto :goto_0

    :cond_3
    move v5, v2

    .line 2588
    goto :goto_2

    .line 2590
    :cond_4
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v3

    if-eqz v3, :cond_5

    move v5, v0

    :goto_3
    move-object v0, p5

    move-wide v2, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendText(Ljava/util/List;JLjava/lang/String;I)J

    goto :goto_0

    :cond_5
    move v5, v2

    .line 2591
    goto :goto_3
.end method

.method private sendRcsVideo([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, -0x1

    .line 2528
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getDuration()I

    move-result v7

    .line 2529
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2531
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2533
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2534
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2535
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    move-object v1, p4

    .line 2534
    invoke-virtual/range {v1 .. v8}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVideoToGroupChat(JJLjava/lang/String;IZ)J

    .line 2549
    :goto_0
    return-void

    .line 2536
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2537
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    .line 2538
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v3, p4

    move-wide v4, p2

    .line 2537
    invoke-virtual/range {v3 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVideoToPc(JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_1
    move v9, v0

    .line 2539
    goto :goto_1

    .line 2540
    :cond_2
    array-length v1, p1

    if-ne v1, v9, :cond_4

    .line 2541
    const/4 v1, 0x0

    aget-object v3, p1, v1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2542
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move-object v2, p4

    move-wide v4, p2

    .line 2541
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVideo(Ljava/lang/String;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_3
    move v9, v0

    .line 2543
    goto :goto_2

    .line 2545
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v6

    .line 2546
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getIsRecord()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    move-object v2, p4

    move-wide v4, p2

    .line 2545
    invoke-virtual/range {v2 .. v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVideo(Ljava/util/List;JLjava/lang/String;IZI)J

    goto :goto_0

    :cond_5
    move v9, v0

    .line 2547
    goto :goto_3
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1534
    const-string/jumbo v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSmsWorker sending message: recipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1536
    const-string/jumbo v1, ", threadId="

    .line 1535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1537
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 1538
    sget v6, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    move-object v3, p1

    move-wide v4, p3

    .line 1537
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1540
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1543
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1549
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1550
    return-void

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSendRcsMessage()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2101
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    invoke-static {}, Lcom/android/mms/rcs/RcsDualSimMananger;->getCurrentRcsOnlineSlot()I

    move-result v0

    .line 2103
    sget v1, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 2104
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0700e2

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2107
    return v4

    .line 2108
    :cond_0
    if-eq v0, v1, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0700e3

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2111
    return v4

    .line 2115
    :cond_1
    return v3
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1290
    if-nez p0, :cond_0

    .line 1291
    const-string/jumbo v0, "<none>"

    return-object v0

    .line 1293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1295
    const-string/jumbo v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1297
    const-string/jumbo v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1299
    const-string/jumbo v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1301
    const-string/jumbo v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1303
    const-string/jumbo v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 1305
    const-string/jumbo v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private syncTextFromSlideshow()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 916
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 921
    :cond_1
    return-void

    .line 924
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 925
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 6

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 893
    :cond_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 897
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 899
    new-instance v0, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "text/plain"

    const-string/jumbo v4, "text_0.txt"

    .line 900
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 899
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 901
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 907
    return-void

    .line 904
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1882
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    const-string/jumbo v0, "updateDraftMmsMessage uri=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1885
    :cond_0
    if-nez p0, :cond_1

    .line 1886
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "updateDraftMmsMessage null uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return-void

    .line 1889
    :cond_1
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1891
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1894
    :try_start_0
    invoke-virtual {p1, p0, v0, p4}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1900
    return-void

    .line 1895
    :catch_0
    move-exception v1

    .line 1896
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 2006
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2007
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2008
    const-string/jumbo v2, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2012
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 2013
    return-void

    .line 2016
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2017
    const-string/jumbo v3, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2018
    const-string/jumbo v0, "body"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    const-string/jumbo v0, "type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2020
    const-string/jumbo v0, "address"

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v3, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2022
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2024
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2025
    return-void
.end method

.method private updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 3

    .prologue
    .line 1459
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1460
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1462
    new-instance v0, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1463
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    .line 1464
    return-void
.end method

.method private updateState(IZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1319
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_0

    .line 1323
    return-void

    .line 1325
    :cond_0
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1326
    if-eqz p2, :cond_4

    .line 1327
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1334
    :goto_0
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_1

    .line 1335
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1340
    :cond_1
    if-eqz p3, :cond_2

    .line 1341
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_5

    .line 1342
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1348
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_3

    .line 1349
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "updateState: %s%s = %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    .line 1350
    if-eqz p2, :cond_6

    const-string/jumbo v0, "+"

    :goto_2
    aput-object v0, v2, v3

    .line 1351
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1349
    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    :cond_3
    return-void

    .line 1329
    :cond_4
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_0

    .line 1343
    :cond_5
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_1

    .line 1350
    :cond_6
    const-string/jumbo v0, "-"

    goto :goto_2
.end method


# virtual methods
.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4

    .prologue
    .line 2040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    .line 2042
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2043
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2044
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2045
    const-string/jumbo v1, "type=3"

    const/4 v2, 0x0

    .line 2044
    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2047
    :cond_0
    return-void
.end method

.method public clearCacheRcsMessage()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2314
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 2315
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 2316
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 2318
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    .line 2319
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setLatitude(D)V

    .line 2320
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setLongitude(D)V

    .line 2321
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setLocation(Ljava/lang/String;)V

    .line 2322
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setCloudFileId(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 2324
    return-void
.end method

.method public clearConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1974
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1979
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1980
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 1093
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const-string/jumbo v0, "[WorkingMessage] discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 1098
    return-void

    .line 1102
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 1107
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1110
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    if-eqz v0, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1113
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1114
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1206
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "WorkingMessage:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1208
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 1209
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_0
    return-void
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    return v0
.end method

.method public getCacheRcsMessage()Z
    .locals 1

    .prologue
    .line 2302
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsCacheRcsMessage:Z

    return v0
.end method

.method public getCloudFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mCloudFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 2194
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mDuration:I

    return v0
.end method

.method public getIsRecord()Z
    .locals 1

    .prologue
    .line 2270
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsRecord:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 2238
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mLatitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 2246
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mLongitude:D

    return-wide v0
.end method

.method public getRcsEmoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsEmoId:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsEmoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsEmoName:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsType()I
    .locals 1

    .prologue
    .line 2230
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mRcsType:I

    return v0
.end method

.method public getResendMultiRecipients()Z
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    return v0
.end method

.method public getScaling()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mScaling:Ljava/lang/String;

    return-object v0
.end method

.method public getScalingToInt()I
    .locals 2

    .prologue
    .line 2596
    const/16 v0, 0x64

    .line 2597
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScaling()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2598
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getScaling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2600
    :cond_0
    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWorkingRecipients()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 978
    return-object v1

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachment()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 822
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRcsAttach()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2218
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsType:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 852
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 884
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVcal()Z
    .locals 2

    .prologue
    .line 837
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVcard()Z
    .locals 2

    .prologue
    .line 833
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurn()Z
    .locals 1

    .prologue
    .line 2262
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsBurn:Z

    return v0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 636
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWorthSaving()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    return v1

    .line 606
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasRcsAttach()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    return v1

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    return v1

    .line 616
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1153
    if-nez p1, :cond_0

    .line 1154
    return-void

    .line 1157
    :cond_0
    const-string/jumbo v0, "subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1160
    const-string/jumbo v0, "msg_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1161
    if-eqz v0, :cond_1

    .line 1162
    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    .line 1163
    return-void

    .line 1165
    :cond_1
    const-string/jumbo v0, "sms_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1168
    return-void

    .line 1166
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public removeAttachment(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 471
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 472
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 473
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 475
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 478
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 479
    if-eqz p1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 485
    :cond_1
    return-void
.end method

.method public removeFakeMmsForDraft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 988
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 989
    return-void
.end method

.method public requiresMms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1260
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public requiringRcsAttachment()Z
    .locals 1

    .prologue
    .line 2174
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsRequiringRcsAttachment:Z

    return v0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 999
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveAsMms mDiscarded: true mConversation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1001
    const-string/jumbo v1, " returning NULL uri and bailing"

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    return-object v2

    .line 1009
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1012
    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1016
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1017
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1027
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 1028
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1029
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 1028
    const/4 v3, 0x0

    .line 1029
    const/4 v5, 0x0

    .line 1028
    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1033
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1037
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0

    .line 1031
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    .line 1035
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1034
    throw v0
.end method

.method public saveDraft(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1046
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v0, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveDraft mDiscarded: true mConversation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1048
    const-string/jumbo v1, " skipping saving draft and bailing"

    .line 1047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_1

    .line 1054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "saveDraft() called with no conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveDraft for mConversation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->hasMmsContentToSave()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 1067
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 1090
    :cond_3
    :goto_0
    return-void

    .line 1070
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1079
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1080
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    goto :goto_0

    .line 1070
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1

    .line 1086
    :cond_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1087
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1364
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send origThreadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1368
    invoke-direct {p0, v8}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1371
    invoke-direct {p0, v8}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1374
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->checkConversationHasRecipients(Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1378
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1379
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->shouldSendMessageWithRcsPolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->sendRcsMessage(Ljava/lang/String;)V

    .line 1381
    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1386
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1387
    const-string/jumbo v0, "WorkingMessage.send MMS sending failure. mms_config.xml is missing uaProfUrl setting.  uaProfUrl is required for MMS service, but can be absent for SMS."

    .line 1390
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    throw v1

    .line 1399
    :cond_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1400
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 1402
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1403
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1404
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v0, :cond_3

    move v7, v8

    .line 1406
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Send mmsUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1409
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Z)V

    .line 1421
    const-string/jumbo v1, "WorkingMessage.send MMS"

    .line 1409
    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1451
    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1454
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1455
    return-void

    .line 1425
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mText="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1428
    const-string/jumbo v3, "pref_key_enable_signature"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1429
    const-string/jumbo v3, "pref_key_edit_signature"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1432
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string/jumbo v0, "WorkingMessage.send SMS"

    .line 1440
    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public sendRcsVcard([Ljava/lang/String;JLcom/suntek/mway/rcs/client/api/message/MessageApi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;,
            Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 2457
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2459
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v4

    .line 2460
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getConversationId()Ljava/lang/String;

    .line 2462
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2463
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mVcardPath:Ljava/lang/String;

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVcardToGroupChat(JJLjava/lang/String;)J

    .line 2474
    :goto_0
    return-void

    .line 2464
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mVcardPath:Ljava/lang/String;

    invoke-virtual {p4, p2, p3, v0, v5}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVcardToPc(JLjava/lang/String;I)J

    goto :goto_0

    .line 2467
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2468
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mVcardPath:Ljava/lang/String;

    move-object v0, p4

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVcard(Ljava/lang/String;JLjava/lang/String;I)J

    goto :goto_0

    .line 2471
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mVcardPath:Ljava/lang/String;

    move-object v0, p4

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->sendVcard(Ljava/util/List;JLjava/lang/String;I)J

    goto :goto_0
.end method

.method public setAttachment(ILandroid/net/Uri;Z)I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "setAttachment type=%d uri %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    invoke-static {v0, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 535
    if-nez p1, :cond_1

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 536
    xor-int/lit8 v3, p3, 0x1

    .line 535
    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 542
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideshowEditor;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 546
    if-eqz p3, :cond_5

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v3, v0

    .line 553
    :goto_1
    if-nez v3, :cond_2

    .line 554
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 556
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 562
    if-lez v0, :cond_3

    .line 563
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 566
    invoke-virtual {v0, v5}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 574
    if-nez p3, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 575
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 582
    aget v0, v0, v2

    .line 584
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 587
    if-le v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 593
    :cond_4
    :goto_3
    return v3

    .line 547
    :cond_5
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 587
    goto :goto_2

    .line 589
    :cond_7
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold(Landroid/content/Context;)I

    move-result v4

    .line 590
    if-lez v4, :cond_8

    if-le v0, v4, :cond_8

    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4
.end method

.method public setCacheRcsMessage(Z)V
    .locals 0

    .prologue
    .line 2306
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsCacheRcsMessage:Z

    .line 2307
    return-void
.end method

.method public setCloudFileId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mCloudFileId:Ljava/lang/String;

    .line 2183
    return-void
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1219
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1222
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1223
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1224
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1225
    return-void

    :cond_0
    move v0, v1

    .line 1224
    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 2198
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mDuration:I

    .line 2199
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1236
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1241
    :goto_0
    return-void

    .line 1239
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHasMultipleRecipients(ZZ)V
    .locals 2

    .prologue
    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1250
    :goto_0
    const/16 v1, 0x20

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1254
    return-void

    .line 1251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsBurn(Z)V
    .locals 0

    .prologue
    .line 2266
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsBurn:Z

    .line 2267
    return-void
.end method

.method public setIsRecord(Z)V
    .locals 0

    .prologue
    .line 2274
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsRecord:Z

    .line 2275
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 2242
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mLatitude:D

    .line 2243
    return-void
.end method

.method public setLengthRequiresMms(ZZ)V
    .locals 1

    .prologue
    .line 1286
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1287
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mLocation:Ljava/lang/String;

    .line 2259
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 2250
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mLongitude:D

    .line 2251
    return-void
.end method

.method public setRcsEmoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsEmoId:Ljava/lang/String;

    .line 2291
    return-void
.end method

.method public setRcsEmoName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsEmoName:Ljava/lang/String;

    .line 2299
    return-void
.end method

.method public setRcsPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsPath:Ljava/lang/String;

    .line 2283
    return-void
.end method

.method public setRcsType(I)V
    .locals 0

    .prologue
    .line 2234
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mRcsType:I

    .line 2235
    return-void
.end method

.method public setRequiringRcsAttachment(Z)V
    .locals 0

    .prologue
    .line 2170
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsRequiringRcsAttachment:Z

    .line 2171
    return-void
.end method

.method public setResendMultiRecipients(Z)V
    .locals 0

    .prologue
    .line 2066
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    .line 2067
    return-void
.end method

.method public setScaling(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mScaling:Ljava/lang/String;

    .line 2191
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 864
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 865
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 866
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->setSubjectSize(I)V

    .line 869
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 865
    goto :goto_0

    .line 867
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 449
    return-void
.end method

.method public setVcardPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mVcardPath:Ljava/lang/String;

    .line 2311
    return-void
.end method

.method public setWorkingMessageSub(I)V
    .locals 0

    .prologue
    .line 459
    sput p1, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    .line 460
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1180
    packed-switch v0, :pswitch_data_0

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{...} len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1182
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1185
    :pswitch_1
    const-string/jumbo v0, "empty"

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldSendMessageWithRcsPolicy()Z
    .locals 4

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 2097
    sget v1, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSubId:I

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    .line 2096
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/rcs/RcsDualSimMananger;->shouldSendMessageWithRcsPolicy(Landroid/content/Context;IZZ)Z

    move-result v0

    return v0
.end method

.method public syncWorkingRecipients()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 955
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 956
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 957
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 958
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 959
    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 961
    :cond_1
    return-void
.end method

.method public unDiscard()V
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1120
    return-void
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    const-string/jumbo v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1141
    const-string/jumbo v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1142
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    const-string/jumbo v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
