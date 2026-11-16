.class public Lcom/android/mms/ui/MailBoxMessageContent;
.super Landroid/app/Activity;
.source "MailBoxMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MailBoxMessageContent$1;,
        Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;,
        Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;,
        Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;,
        Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;
    }
.end annotation


# static fields
.field private static final SMS_DETAIL_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DETAIL_PROJECTION_DEFAULT:[Ljava/lang/String;

.field private static final SMS_DETAIL_PROJECTION_RCS:[Ljava/lang/String;

.field private static final SMS_LOCK_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBackgroundHandler:Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

.field private mContentPager:Landroid/support/v4/view/ViewPager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mFontSizeForSave:F

.field private mIsConvMode:Z

.field private mLock:Z

.field private mMailboxId:I

.field private mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgFrom:Ljava/lang/String;

.field private mMsgId:I

.field private mMsgText:Ljava/lang/String;

.field private mMsgThreadId:J

.field private mMsgType:I

.field private mMsgstatus:I

.field private mPagerAdapter:Lcom/android/mms/ui/MessageDetailAdapter;

.field private mRcsChatType:I

.field private mRcsMsgState:I

.field private mRead:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

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

.field private mSubID:I

.field private mSupportApi:Lcom/suntek/mway/rcs/client/api/support/SupportApi;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MailBoxMessageContent;)Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mBackgroundHandler:Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MailBoxMessageContent;)F
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mFontSizeForSave:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MailBoxMessageContent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MailBoxMessageContent;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MailBoxMessageContent;)Lcom/android/mms/ui/MessageDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mPagerAdapter:Lcom/android/mms/ui/MessageDetailAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MailBoxMessageContent;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRead:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/MailBoxMessageContent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MailBoxMessageContent;F)F
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mFontSizeForSave:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MailBoxMessageContent;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent;->forwardRcsMessage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent;->getCurosrData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->initUi()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->inputNumberForwarMessage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    new-array v0, v5, [Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 143
    const-string/jumbo v1, "locked"

    aput-object v1, v0, v4

    .line 141
    sput-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_LOCK_PROJECTION:[Ljava/lang/String;

    .line 145
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 146
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    .line 147
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 148
    const-string/jumbo v1, "address"

    aput-object v1, v0, v5

    .line 149
    const-string/jumbo v1, "body"

    aput-object v1, v0, v6

    .line 150
    const-string/jumbo v1, "sub_id"

    aput-object v1, v0, v7

    .line 151
    const-string/jumbo v1, "locked"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "error_code"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "read"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 145
    sput-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION_DEFAULT:[Ljava/lang/String;

    .line 160
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    .line 162
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 163
    const-string/jumbo v1, "address"

    aput-object v1, v0, v5

    .line 164
    const-string/jumbo v1, "body"

    aput-object v1, v0, v6

    .line 165
    const-string/jumbo v1, "sub_id"

    aput-object v1, v0, v7

    .line 166
    const-string/jumbo v1, "locked"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "error_code"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "read"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "rcs_msg_state"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "rcs_chat_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "rcs_msg_type"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "rcs_thumb_path"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "rcs_file_name"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "rcs_file_size"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "rcs_mime_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 160
    sput-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION_RCS:[Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION_RCS:[Ljava/lang/String;

    .line 182
    :goto_0
    sput-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION:[Ljava/lang/String;

    .line 99
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION_DEFAULT:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSubID:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mScaleFactor:F

    .line 212
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    .line 213
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSupportApi:Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    .line 226
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mFontSizeForSave:F

    .line 666
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageContent$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MailBoxMessageContent$1;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mUiHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    .prologue
    .line 421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 423
    if-eqz p2, :cond_0

    const v0, 0x7f0701f6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 425
    const v0, 0x7f0701fa

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    const v0, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 428
    return-void

    .line 424
    :cond_0
    const v0, 0x7f0701f5

    goto :goto_0
.end method

.method private forwardRcsMessage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f070054

    const/4 v3, 0x0

    .line 781
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    .line 786
    :try_start_0
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    const/4 v2, 0x0

    .line 784
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    move-result v0

    .line 787
    if-eqz v0, :cond_0

    .line 789
    const v0, 0x7f070053

    const/4 v1, 0x0

    .line 788
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 798
    :goto_0
    return-void

    .line 792
    :cond_0
    const v0, 0x7f070054

    const/4 v1, 0x0

    .line 791
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCurosrData(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 523
    if-nez p1, :cond_0

    .line 524
    return-void

    .line 527
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgThreadId:J

    .line 528
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgFrom:Ljava/lang/String;

    .line 529
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgText:Ljava/lang/String;

    .line 530
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRead:I

    .line 531
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    .line 532
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    .line 533
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgstatus:I

    .line 534
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSubID:I

    .line 535
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    .line 536
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRcsMsgState:I

    .line 538
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRcsChatType:I

    .line 540
    :cond_2
    return-void
.end method

.method private getSwapSmsSetection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mIsConvMode:Z

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgThreadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMailboxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    .line 719
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 720
    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 722
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->startAsyncQuery()V

    .line 728
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string/jumbo v0, "MessageDetailActivity"

    const-string/jumbo v1, "There\'s no sms uri!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->finish()V

    goto :goto_0
.end method

.method private initUi()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 562
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MailBoxMessageContent;->setProgressBarIndeterminateVisibility(Z)V

    .line 564
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MailBoxMessageContent;->moveCursorToCurrentMsg(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_0

    .line 568
    new-instance v0, Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageDetailAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mPagerAdapter:Lcom/android/mms/ui/MessageDetailAdapter;

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mPagerAdapter:Lcom/android/mms/ui/MessageDetailAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageDetailAdapter;->setScaleTextList(Ljava/util/ArrayList;)V

    .line 570
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentPager:Landroid/support/v4/view/ViewPager;

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mPagerAdapter:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 576
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 577
    return-void
.end method

.method private inputNumberForwarMessage()V
    .locals 4

    .prologue
    .line 750
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 751
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 752
    const/4 v2, -0x1

    .line 753
    const/4 v3, -0x2

    .line 751
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 754
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 756
    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 757
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    const v2, 0x7f070059

    .line 757
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 759
    new-instance v2, Lcom/android/mms/ui/MailBoxMessageContent$3;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent$3;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/widget/EditText;)V

    const v0, 0x104000a

    .line 757
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 777
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 757
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 778
    return-void
.end method

.method private isLockMessage()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    .line 510
    sget-object v3, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_LOCK_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 509
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 517
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_0
    return v0

    :cond_1
    move v0, v8

    .line 513
    goto :goto_0

    :cond_2
    move v0, v8

    .line 514
    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    .line 517
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_3
    throw v0

    :cond_4
    move v0, v8

    goto :goto_0
.end method

.method private isRcsMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 824
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRcsChatType:I

    if-lez v1, :cond_0

    .line 825
    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRcsChatType:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 824
    :cond_0
    return v0
.end method

.method private lockUnlockMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 486
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isLockMessage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    .line 487
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    .line 488
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 489
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 490
    const-string/jumbo v1, "locked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MailBoxMessageContent$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/MailBoxMessageContent$2;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 504
    return-void

    :cond_0
    move v0, v1

    .line 488
    goto :goto_0
.end method

.method private moveCursorToCurrentMsg(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 585
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    :cond_0
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 588
    return-object p1

    .line 590
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    :cond_2
    return-object v1
.end method

.method private resendShortMessage(JLandroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    .line 455
    const-string/jumbo v0, "address"

    aput-object v0, v3, v8

    const-string/jumbo v0, "body"

    aput-object v0, v3, v2

    const-string/jumbo v0, "sub_id"

    aput-object v0, v3, v5

    move-object v0, p0

    move-object v2, p3

    move-object v5, v4

    move-object v6, v4

    .line 454
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_1

    .line 460
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .line 462
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 463
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 465
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v1, p0

    move-wide v4, p1

    .line 461
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 466
    invoke-interface {v0, p1, p2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 481
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    :try_start_1
    const-string/jumbo v1, "MessageDetailActivity"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    .line 475
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 474
    throw v0

    .line 478
    :cond_1
    const v0, 0x7f0702e7

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startAsyncQuery()V
    .locals 8

    .prologue
    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mBackgroundHandler:Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    .line 699
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION:[Ljava/lang/String;

    .line 698
    const/16 v1, 0x1a2e

    .line 700
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 698
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    const-string/jumbo v1, "MessageDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query sms content failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startQuerySmsContent()V
    .locals 8

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mBackgroundHandler:Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 545
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 546
    sget-object v4, Lcom/android/mms/ui/MailBoxMessageContent;->SMS_DETAIL_PROJECTION:[Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getSwapSmsSetection()Ljava/lang/String;

    move-result-object v5

    .line 548
    const-string/jumbo v7, "_id ASC"

    .line 544
    const/16 v1, 0x1a2e

    .line 548
    const/4 v6, 0x0

    .line 544
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private updateUi()V
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->setProgressBarIndeterminateVisibility(Z)V

    .line 581
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->invalidateOptionsMenu()V

    .line 582
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 802
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 803
    return-void

    .line 805
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 821
    :goto_0
    return-void

    .line 808
    :pswitch_0
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    .line 807
    invoke-static {p0, v2, p3, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    goto :goto_0

    .line 812
    :pswitch_1
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    .line 811
    invoke-static {p0, v2, p3, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    goto :goto_0

    .line 816
    :pswitch_2
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    .line 815
    invoke-static {p0, v2, p3, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->requestWindowFeature(I)Z

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->setProgressBarIndeterminateVisibility(Z)V

    .line 259
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->setContentView(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentResolver:Landroid/content/ContentResolver;

    .line 261
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mBackgroundHandler:Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    .line 263
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->handleIntent()V

    .line 264
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->startQuerySmsContent()V

    .line 265
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mContentPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 708
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent;->setIntent(Landroid/content/Intent;)V

    .line 711
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->handleIntent()V

    .line 712
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 414
    return v3

    .line 359
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgFrom:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->dialNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    :goto_0
    return v3

    .line 362
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isLockMessage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    .line 363
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;)V

    .line 364
    iget-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mLock:Z

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MailBoxMessageContent;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 367
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isRcsMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    .line 370
    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;)V

    .line 371
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsChatMessageUtils;->forwardContactOrConversation(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 375
    :cond_0
    const v0, 0x7f070070

    .line 374
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 380
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string/jumbo v1, "sms_body"

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string/jumbo v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const-string/jumbo v1, "reply_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageContent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->lockUnlockMessage()V

    goto :goto_0

    .line 398
    :sswitch_5
    iget-wide v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgThreadId:J

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/MailBoxMessageContent;->resendShortMessage(JLandroid/net/Uri;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->finish()V

    goto :goto_0

    .line 402
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->saveToContact()V

    goto/16 :goto_0

    .line 405
    :sswitch_7
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isRcsMessage()Z

    move-result v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->favoritedOneMessage(Landroid/content/Context;JZZ)V

    goto/16 :goto_0

    .line 408
    :sswitch_8
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isRcsMessage()Z

    move-result v2

    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/mms/rcs/RcsChatMessageUtils;->favoritedOneMessage(Landroid/content/Context;JZZ)V

    goto/16 :goto_0

    .line 411
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->finish()V

    goto/16 :goto_0

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_4
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x102002c -> :sswitch_9
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const v4, 0x7f0702e6

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 299
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 301
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const v0, 0x7f07011e

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 303
    const v1, 0x7f020079

    .line 302
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 304
    const v1, 0x7f07011e

    .line 302
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 307
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mRcsMsgState:I

    const/16 v1, -0x80

    if-ne v0, v1, :cond_1

    .line 308
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 309
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 310
    return v5

    .line 312
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    if-ne v0, v5, :cond_5

    .line 313
    const/4 v0, 0x4

    const v1, 0x7f0702df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 314
    const v0, 0x7f07013a

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 315
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 334
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isLockMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    const/4 v0, 0x7

    const v1, 0x7f070216

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgFrom:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    const/4 v0, 0x6

    const v1, 0x7f0701aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 344
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgId:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFavoritedMessage(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 346
    const/16 v0, 0x8

    const v1, 0x7f070041

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 352
    :cond_4
    :goto_2
    return v5

    .line 316
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 317
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 318
    :cond_6
    const v0, 0x7f07013a

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 319
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isRcsMessage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 320
    const/4 v0, 0x5

    const v1, 0x7f07013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 322
    :cond_7
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 323
    :cond_8
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    if-ne v0, v3, :cond_a

    .line 324
    const v0, 0x7f07013a

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 325
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageContent;->isRcsMessage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 326
    const/4 v0, 0x5

    const v1, 0x7f07013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 328
    :cond_9
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 329
    :cond_a
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 330
    const v0, 0x7f07013a

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 331
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 337
    :cond_b
    const/4 v0, 0x7

    const v1, 0x7f070215

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 348
    :cond_c
    const/16 v0, 0x9

    const v1, 0x7f070042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 270
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mFontSizeForSave:F

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->saveTextFontSize(Landroid/content/Context;F)V

    .line 271
    return-void
.end method

.method public saveToContact()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent;->mMsgFrom:Ljava/lang/String;

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "MessageDetailActivity"

    const-string/jumbo v1, "  saveToContact fail for null address! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    return-void

    .line 440
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    const-string/jumbo v2, "email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    :goto_0
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MailBoxMessageContent;->startActivity(Landroid/content/Intent;)V

    .line 451
    return-void

    .line 445
    :cond_2
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string/jumbo v0, "phone_type"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
