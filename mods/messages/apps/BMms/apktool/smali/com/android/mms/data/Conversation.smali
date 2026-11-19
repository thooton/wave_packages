.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$1;,
        Lcom/android/mms/data/Conversation$Cache;,
        Lcom/android/mms/data/Conversation$ConversationQueryHandler;,
        Lcom/android/mms/data/Conversation$ThreadUpateHandler;
    }
.end annotation


# static fields
.field public static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field public static final DEFAULT_ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final RCS_ADD_ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SEEN_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field public static final UNREAD_PROJECTION:[Ljava/lang/String;

.field private static final UPDATE_THREAD_CONTENT_URI:Landroid/net/Uri;

.field private static mHandlePendingChips:Ljava/lang/Runnable;

.field private static final mPendingThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpateThreadHandler:Landroid/os/Handler;

.field public static final sAllThreadsUri:Landroid/net/Uri;

.field private static sDeletingThreads:Z

.field private static sDeletingThreadsLock:Ljava/lang/Object;

.field private static sLoadingThreads:Z

.field private static sReadContentValues:Landroid/content/ContentValues;

.field private static sToastHandler:Landroid/os/Handler;


# instance fields
.field private mAttachmentInfo:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mForwardRecipientNumber:[Ljava/lang/String;

.field private mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasMmsForward:Z

.field private mHasUnreadMessages:Z

.field private mIsChecked:Z

.field private mIsGroupChat:Z

.field private mIsMyPcConversation:Z

.field private mIsTop:I

.field private mLastMessageStatus:I

.field private mMarkAsReadBlocked:Z

.field private mMarkAsReadWaiting:Z

.field private mMessageCount:I

.field private mRcsChatType:I

.field private mRcsMsgId:I

.field private mRcsMsgType:I

.field private mRcsTopTime:I

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Conversation;->UPDATE_THREAD_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/data/Conversation;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method static synthetic -get3()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4()Landroid/content/ContentValues;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->buildReadContentValues()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap4()V
    .locals 0

    invoke-static {}, Lcom/android/mms/data/Conversation;->handlePendingThreads()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/data/Conversation;Landroid/content/Context;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/Conversation;->sendReadReport(Landroid/content/Context;JI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/data/Conversation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showStorageFullToast(Landroid/content/Context;)V

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

    .line 74
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "simple"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 77
    new-array v0, v5, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 79
    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    .line 77
    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "seen"

    aput-object v1, v0, v3

    .line 84
    sput-object v0, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    .line 135
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "message_count"

    aput-object v1, v0, v5

    const-string/jumbo v1, "recipient_ids"

    aput-object v1, v0, v6

    .line 137
    const-string/jumbo v1, "snippet"

    aput-object v1, v0, v7

    const-string/jumbo v1, "snippet_cs"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "read"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "error"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "has_attachment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "attachment_info"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "rcs_top"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "rcs_top_time"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "last_msg_id"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "last_msg_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "msg_chat_type"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 135
    sput-object v0, Lcom/android/mms/data/Conversation;->RCS_ADD_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 143
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "message_count"

    aput-object v1, v0, v5

    const-string/jumbo v1, "recipient_ids"

    aput-object v1, v0, v6

    .line 145
    const-string/jumbo v1, "snippet"

    aput-object v1, v0, v7

    const-string/jumbo v1, "snippet_cs"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "read"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "error"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "has_attachment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "attachment_info"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 143
    sput-object v0, Lcom/android/mms/data/Conversation;->DEFAULT_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/mms/data/Conversation;->RCS_ADD_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 149
    :goto_0
    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string/jumbo v0, "rcs_top_time DESC,rcs_top DESC, date DESC"

    .line 156
    :goto_1
    sput-object v0, Lcom/android/mms/data/Conversation;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->sToastHandler:Landroid/os/Handler;

    .line 1688
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 1689
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 1691
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 1692
    const-string/jumbo v1, "address"

    aput-object v1, v0, v5

    .line 1693
    const-string/jumbo v1, "body"

    aput-object v1, v0, v6

    .line 1694
    const-string/jumbo v1, "date"

    aput-object v1, v0, v7

    .line 1695
    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1696
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1697
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1698
    const-string/jumbo v1, "locked"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1699
    const-string/jumbo v1, "error_code"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1688
    sput-object v0, Lcom/android/mms/data/Conversation;->SMS_PROJECTION:[Ljava/lang/String;

    .line 1841
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->mUpateThreadHandler:Landroid/os/Handler;

    .line 1842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    .line 1845
    const-string/jumbo v0, "content://mms-sms/update-thread/"

    .line 1844
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->UPDATE_THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 1852
    new-instance v0, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$1;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 66
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation;->DEFAULT_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_1
    const-string/jumbo v0, "date DESC"

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasMmsForward:Z

    .line 173
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 176
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasMmsForward:Z

    .line 182
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 183
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 187
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasMmsForward:Z

    .line 193
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 195
    return-void
.end method

.method public static asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1008
    sget-object v3, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method private static blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1516
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1517
    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 1518
    const-string/jumbo v3, "seen=0"

    move-object v5, v4

    .line 1516
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1524
    if-eqz v2, :cond_2

    .line 1526
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1528
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1532
    :goto_0
    if-nez v1, :cond_0

    .line 1533
    return-void

    .line 1527
    :catchall_0
    move-exception v0

    .line 1528
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1527
    throw v0

    .line 1536
    :cond_0
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " MMS msgs as seen"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1541
    const-string/jumbo v2, "seen"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "seen=0"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1551
    :goto_1
    return-void

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Database is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 1548
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showStorageFullToast(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_0
.end method

.method private static blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1468
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1469
    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 1470
    const-string/jumbo v3, "seen=0"

    move-object v5, v4

    .line 1468
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1476
    if-eqz v2, :cond_2

    .line 1478
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1480
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1484
    :goto_0
    if-nez v1, :cond_0

    .line 1485
    return-void

    .line 1479
    :catchall_0
    move-exception v0

    .line 1480
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1479
    throw v0

    .line 1488
    :cond_0
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1489
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " SMS msgs as seen"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1493
    const-string/jumbo v2, "seen"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "seen=0"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1502
    :goto_1
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Database is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 1500
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showStorageFullToast(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_0
.end method

.method private buildReadContentValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 368
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    .line 370
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    :cond_0
    return-void
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1563
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    const-string/jumbo v0, "[Conversation] cacheAllThreads: begin"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1567
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1568
    return-void

    .line 1570
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 1575
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1578
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 1579
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 1578
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1581
    if-eqz v1, :cond_5

    .line 1582
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1583
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1584
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1588
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    :try_start_4
    monitor-exit v0

    .line 1592
    if-nez v4, :cond_4

    .line 1595
    new-instance v0, Lcom/android/mms/data/Conversation;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v1, v4}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1597
    :try_start_5
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v4

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1598
    :try_start_6
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v4

    .line 1601
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to add duplicate Conversation to Cache for threadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1602
    const-string/jumbo v3, " new conv: "

    .line 1601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1603
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cacheAllThreads cache.replace failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1614
    :catchall_0
    move-exception v0

    .line 1615
    if-eqz v1, :cond_3

    .line 1616
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1618
    :cond_3
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1619
    const/4 v2, 0x0

    :try_start_9
    sput-boolean v2, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    monitor-exit v1

    .line 1614
    throw v0

    .line 1566
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1588
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v0

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1597
    :catchall_3
    move-exception v5

    :try_start_b
    monitor-exit v4

    throw v5
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1610
    :cond_4
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, v4, v1, v0}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1615
    :cond_5
    if-eqz v1, :cond_6

    .line 1616
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1618
    :cond_6
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1619
    const/4 v1, 0x0

    :try_start_d
    sput-boolean v1, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v0

    .line 1624
    invoke-static {v6}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1626
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1627
    const-string/jumbo v0, "[Conversation] cacheAllThreads: finished"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1628
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1630
    :cond_7
    return-void

    .line 1618
    :catchall_4
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 1660
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1661
    return-void
.end method

.method public static dumpSmsTable(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1716
    const-string/jumbo v0, "**** Dump of sms table ****"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1718
    sget-object v2, Lcom/android/mms/data/Conversation;->SMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "_id DESC"

    move-object v4, v3

    .line 1717
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1721
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1722
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 1723
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpSmsTable _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1725
    const-string/jumbo v3, " "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1725
    const-string/jumbo v3, "thread_id"

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1725
    const-string/jumbo v3, " : "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1725
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1724
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1726
    const-string/jumbo v3, " "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1726
    const-string/jumbo v3, "address"

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1726
    const-string/jumbo v3, " : "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1726
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1727
    const-string/jumbo v3, " "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1727
    const-string/jumbo v3, "body"

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1727
    const-string/jumbo v3, " : "

    .line 1724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1727
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1728
    const-string/jumbo v2, " "

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1728
    const-string/jumbo v2, "date"

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1728
    const-string/jumbo v2, " : "

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1728
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1724
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1729
    const-string/jumbo v2, " "

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1729
    const-string/jumbo v2, "type"

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1729
    const-string/jumbo v2, " : "

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1729
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1731
    :catchall_0
    move-exception v0

    .line 1732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1731
    throw v0

    .line 1732
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1734
    return-void
.end method

.method public static dumpThreadsTable(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1664
    const-string/jumbo v0, "**** Dump of threads table ****"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 1666
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date ASC"

    move-object v4, v3

    .line 1665
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1668
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1669
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpThreadsTable threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1672
    const-string/jumbo v4, " "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1672
    const-string/jumbo v4, "date"

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1672
    const-string/jumbo v4, " : "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1672
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1671
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, " "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, "message_count"

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, " : "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1674
    const-string/jumbo v4, " "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1674
    const-string/jumbo v4, "snippet"

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1674
    const-string/jumbo v4, " : "

    .line 1671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    const-string/jumbo v3, " "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    const-string/jumbo v3, "read"

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    const-string/jumbo v3, " : "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    const-string/jumbo v3, " "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    const-string/jumbo v3, "error"

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    const-string/jumbo v3, " : "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v3, " "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v3, "has_attachment"

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v3, " : "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v3, " "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v3, "recipient_ids"

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v3, " : "

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1681
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----recipients: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1683
    :catchall_0
    move-exception v0

    .line 1684
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1683
    throw v0

    .line 1684
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1686
    return-void
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    monitor-enter p1

    .line 1231
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 1232
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 1233
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 1235
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1236
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mAttachmentInfo:Ljava/lang/String;

    .line 1239
    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-static {p2, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 1238
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1240
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 1242
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    invoke-direct {p1, v2}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 1243
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    iput-boolean v2, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 1244
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_2
    iput-boolean v2, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 1246
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    const/16 v2, 0xa

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mIsTop:I

    .line 1248
    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mRcsTopTime:I

    .line 1249
    const/16 v2, 0xc

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mRcsMsgId:I

    .line 1250
    const/16 v2, 0xd

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mRcsMsgType:I

    .line 1251
    const/16 v2, 0xe

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/android/mms/data/Conversation;->mRcsChatType:I

    .line 1252
    iget v2, p1, Lcom/android/mms/data/Conversation;->mRcsChatType:I

    if-ne v2, v5, :cond_6

    :goto_3
    iput-boolean v0, p1, Lcom/android/mms/data/Conversation;->mIsGroupChat:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    .line 1257
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-static {v1, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1259
    monitor-enter p1

    .line 1260
    :try_start_1
    iput-object v0, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 1263
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    :try_start_2
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatByThreadId(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    iput-object v0, p1, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1271
    :cond_1
    :goto_4
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1272
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fillFromCursor: conv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", recipientIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_2
    return-void

    :cond_3
    move v2, v1

    .line 1242
    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 1243
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 1244
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 1252
    goto :goto_3

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1259
    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    const-string/jumbo v2, "RCS_UI"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 344
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 345
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 347
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 348
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-static {p0, v0, p1, v5}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 351
    return-object v0

    .line 354
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v5}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 356
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_1
    :goto_1
    return-object v0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to add duplicate Conversation to Cache (from cursor): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converations.from cache.replace failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 219
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to add duplicate Conversation to Cache (from threadId): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get by threadId cache.replace failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    if-nez p1, :cond_0

    .line 278
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 290
    invoke-static {p0, v0, v1, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    const/16 v1, 0x2c

    const/16 v2, 0x3b

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0, p2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 239
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    return-object v0

    .line 246
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v0

    .line 247
    new-instance v2, Lcom/android/mms/data/Conversation;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 248
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Conversation.get: created new conversation xxxxxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    const-string/jumbo v0, "Mms"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Conversation.get: new conv\'s recipients don\'t match input recpients xxxxxxx"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_3
    :goto_0
    return-object v2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tried to add duplicate Conversation to Cache (from recipients): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-static {v2}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get by recipients cache.replace failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAttachmentInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    if-nez p1, :cond_0

    .line 591
    return-object v3

    .line 593
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const-string/jumbo v0, "SMS"

    return-object v0

    .line 598
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 604
    const-string/jumbo v0, ""

    .line 605
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 606
    if-ne v2, v4, :cond_7

    .line 607
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 610
    const v1, 0x7f070355

    .line 609
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_2
    :goto_0
    return-object v0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    return-object v3

    .line 611
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 613
    const v1, 0x7f070354

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 616
    const v1, 0x7f070353

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 619
    const v1, 0x7f070356

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 620
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 621
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_7
    if-le v2, v4, :cond_2

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 625
    const v1, 0x7f070357

    .line 624
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getLatestMessageAttachmentUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-class v8, Lcom/android/mms/data/Conversation;

    monitor-enter v8

    .line 632
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    monitor-exit v8

    .line 633
    return-object v7

    .line 638
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 639
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 640
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v0, "transport_type"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 641
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 638
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 642
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 645
    const-string/jumbo v0, "transport_type"

    .line 644
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string/jumbo v2, "sms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 654
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 655
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v8

    .line 659
    return-object v7

    .line 649
    :cond_3
    :try_start_3
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 650
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 654
    :goto_1
    if-eqz v1, :cond_4

    .line 655
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 898
    const-wide/16 v2, -0x1

    .line 899
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 901
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 902
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    .line 903
    if-eqz v5, :cond_0

    .line 904
    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_1
    sget-object v5, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 914
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 915
    :cond_2
    sget-boolean v6, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 917
    :try_start_1
    sget-object v6, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x7148

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 923
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "getOrCreateThreadId timed out waiting for delete to complete"

    .line 924
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 923
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    :cond_3
    :try_start_3
    invoke-static {p0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    .line 934
    :goto_2
    :try_start_4
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 935
    const-string/jumbo v2, "[Conversation] getOrCreateThreadId for (%s) returned %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 936
    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 935
    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v5

    .line 938
    return-wide v0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    :try_start_5
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v0, v2

    goto :goto_2

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 918
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10

    .prologue
    .line 943
    const-wide/16 v0, -0x1

    .line 944
    sget-object v2, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 949
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 950
    :cond_0
    sget-boolean v3, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 952
    :try_start_1
    sget-object v3, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x7148

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 958
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "getOrCreateThreadId timed out waiting for delete to complete"

    .line 959
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 958
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 965
    :cond_1
    :try_start_3
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    .line 969
    :goto_1
    :try_start_4
    const-string/jumbo v3, "Mms"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    const-string/jumbo v3, "[Conversation] getOrCreateThreadId for (%s) returned %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 971
    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 970
    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v2

    .line 973
    return-wide v0

    .line 966
    :catch_0
    move-exception v3

    .line 967
    :try_start_5
    const-string/jumbo v4, "Mms"

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 944
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 953
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1655
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1656
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 716
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static handlePendingThreads()V
    .locals 6

    .prologue
    .line 1860
    sget-object v1, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1861
    :try_start_0
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update thread count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    sget-object v0, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1863
    new-instance v0, Lcom/android/mms/data/Conversation$7;

    invoke-direct {v0, v4, v5}, Lcom/android/mms/data/Conversation$7;-><init>(J)V

    invoke-static {v0}, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1860
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1874
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1876
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1433
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$4;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$4;-><init>(Landroid/content/Context;)V

    .line 1438
    const-string/jumbo v2, "Conversation.init"

    .line 1433
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1441
    return-void
.end method

.method private static isNeedPostPendingThreads(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1879
    sget-object v3, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1881
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1882
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1883
    sget-object v0, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1882
    goto :goto_1

    .line 1887
    :cond_1
    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    monitor-exit v3

    return v0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private loadFromThreadId(JZ)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1633
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 1634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1633
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1636
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v1, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1639
    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1641
    const-string/jumbo v2, ", mThreadId="

    .line 1640
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1641
    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 1640
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1650
    const/4 v0, 0x1

    return v0

    .line 1644
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1648
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1645
    return v6

    .line 1647
    :catchall_0
    move-exception v0

    .line 1648
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1647
    throw v0
.end method

.method public static loadingThreads()Z
    .locals 2

    .prologue
    .line 1557
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1558
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1557
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static markAllConversationsAsSeen(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$5;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$5;-><init>(Landroid/content/Context;)V

    .line 1461
    const-string/jumbo v2, "Conversation.markAllConversationsAsSeen"

    .line 1448
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1463
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1464
    return-void
.end method

.method private static postHandlePendingThreads()V
    .locals 4

    .prologue
    .line 1848
    sget-object v0, Lcom/android/mms/data/Conversation;->mUpateThreadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/mms/data/Conversation;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1849
    sget-object v0, Lcom/android/mms/data/Conversation;->mUpateThreadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/mms/data/Conversation;->mHandlePendingChips:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1850
    return-void
.end method

.method private sendReadReport(Landroid/content/Context;JI)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 378
    const-string/jumbo v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 382
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 387
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v6

    const-string/jumbo v0, "m_id"

    aput-object v0, v3, v8

    const-string/jumbo v0, "sub_id"

    aput-object v0, v3, v7

    move-object v0, p1

    move-object v6, v5

    .line 386
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 406
    :cond_1
    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_2
    return-void

    .line 395
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 397
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 396
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 398
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendReadReport: uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_4
    invoke-static {p1, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 402
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 401
    invoke-static {p1, v0, v2, v3, p4}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    .line 406
    if-eqz v1, :cond_5

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_5
    throw v0

    .line 406
    :cond_6
    if-eqz v1, :cond_7

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_7
    return-void
.end method

.method private setHasUnreadMessages(Z)V
    .locals 1

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 859
    return-void

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static showStorageFullToast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1505
    sget-object v0, Lcom/android/mms/data/Conversation;->sToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/data/Conversation$6;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1512
    return-void
.end method

.method public static startConversationQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1069
    sget-object v4, Lcom/android/mms/data/Conversation;->DEFAULT_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v5, p2

    move-object v6, v2

    .line 1068
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public static startDelete(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZLjava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/data/Conversation$ConversationQueryHandler;",
            "IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1083
    sget-object v7, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1088
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    if-eqz v0, :cond_0

    .line 1089
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "startDeleteAll already in the middle of a delete"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->clear()V

    .line 1092
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    .line 1094
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1095
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1096
    if-eqz p2, :cond_1

    move-object v4, v6

    .line 1098
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->setDeleteToken(I)V

    .line 1099
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 1096
    :cond_1
    :try_start_1
    const-string/jumbo v4, "locked=0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v7

    .line 1104
    return-void
.end method

.method public static startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1115
    sget-object v6, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1120
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    if-eqz v0, :cond_0

    .line 1121
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "startDeleteAll already in the middle of a delete"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    .line 1124
    if-eqz p2, :cond_1

    .line 1126
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/PduLoaderManager;->clear()V

    .line 1128
    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->clear()V

    .line 1130
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->setDeleteToken(I)V

    .line 1131
    new-instance v2, Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1133
    return-void

    .line 1124
    :cond_1
    :try_start_1
    const-string/jumbo v4, "locked=0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1040
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1047
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const-string/jumbo v0, "msg_chat_type!=4"

    invoke-static {p2, v0}, Lcom/android/mms/rcs/RcsUtils;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1051
    :goto_0
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 1052
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/android/mms/data/Conversation;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    .line 1051
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void

    :cond_0
    move-object v5, p2

    goto :goto_0
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1027
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 1028
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 5

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1215
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 1220
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncQueryHandler;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, p2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1182
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 1185
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "thread_id"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v1, " in ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1191
    if-lez v1, :cond_0

    .line 1192
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_0
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1195
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v5, v6

    .line 1201
    :goto_1
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/android/mms/data/Conversation;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    .line 1200
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void

    .line 1197
    :cond_2
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static updateThreads(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1892
    sget-object v1, Lcom/android/mms/data/Conversation;->mPendingThread:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1893
    :try_start_0
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->isNeedPostPendingThreads(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    invoke-static {}, Lcom/android/mms/data/Conversation;->postHandlePendingThreads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1897
    return-void

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1750
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifySingleRecipient threadId is ZERO, recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1753
    return-object p3

    .line 1755
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 1756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1755
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1757
    if-nez v1, :cond_1

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifySingleRecipient threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1759
    const-string/jumbo v1, " resulted in NULL cursor , recipient: "

    .line 1758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1761
    return-object p3

    .line 1766
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifySingleRecipient threadId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1768
    const-string/jumbo v2, " can\'t moveToFirst , recipient: "

    .line 1767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1770
    return-object p3

    .line 1772
    :cond_2
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1776
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1778
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1782
    return-object p3

    .line 1773
    :catchall_0
    move-exception v0

    .line 1774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1773
    throw v0

    .line 1786
    :cond_3
    aget-object v2, v1, v6

    invoke-static {p0, v2}, Lcom/android/mms/data/RecipientIdCache;->getSingleAddressFromCanonicalAddressInDb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1788
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifySingleRecipient threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1790
    const-string/jumbo v3, " getSingleNumberFromCanonicalAddresses returned empty number for: "

    .line 1789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1791
    aget-object v1, v1, v6

    .line 1789
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1791
    const-string/jumbo v2, " recipientIds: "

    .line 1789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1793
    return-object p3

    .line 1795
    :cond_4
    invoke-static {p3, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1802
    return-object p3

    .line 1805
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifySingleRecipient for threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1807
    const-string/jumbo v1, " original recipient: "

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1808
    const-string/jumbo v1, " recipient from DB: "

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    .line 1808
    check-cast v0, Landroid/app/Activity;

    .line 1806
    invoke-static {v1, v0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1810
    :cond_6
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1811
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifySingleRecipient for threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1813
    const-string/jumbo v1, " original recipient: "

    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1814
    const-string/jumbo v1, " recipient from DB: "

    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1816
    :cond_7
    return-object v2
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "blockMarkAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v0, :cond_1

    .line 579
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 580
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v0, :cond_1

    .line 581
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_1

    .line 582
    iput-boolean v2, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    .line 583
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 587
    :cond_1
    return-void
.end method

.method public declared-synchronized clearThreadId()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 761
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 767
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 4

    .prologue
    monitor-enter p0

    .line 742
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 743
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsGroupChat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    if-eqz v0, :cond_1

    .line 744
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 745
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 746
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 756
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 749
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 985
    :try_start_0
    check-cast p1, Lcom/android/mms/data/Conversation;

    .line 986
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v1, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 987
    :catch_0
    move-exception v0

    .line 988
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttachmentInfo()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mAttachmentInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    monitor-enter p0

    .line 821
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getForwardRecipientNumber()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mForwardRecipientNumber:[Ljava/lang/String;

    return-object v0
.end method

.method public getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    return-object v0
.end method

.method public getGroupChatStatusText()Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f07001b

    .line 1970
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1990
    :cond_0
    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    .line 1973
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1975
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1977
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1979
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1981
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1983
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1985
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1971
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getHasMmsForward()Z
    .locals 1

    .prologue
    .line 1900
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasMmsForward:Z

    return v0
.end method

.method public declared-synchronized getLastMessageStatus()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 894
    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mLastMessageStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 829
    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRcsLastMsgId()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1996
    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mRcsMsgId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRcsLastMsgType()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 2003
    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mRcsMsgType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    monitor-enter p0

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 729
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    monitor-enter p0

    .line 703
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 704
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 706
    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 865
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 4

    .prologue
    monitor-enter p0

    .line 800
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 801
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 803
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 879
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 850
    monitor-enter p0

    .line 851
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isChecked()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 886
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsGroupChat:Z

    return v0
.end method

.method public isGroupChatActive()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1941
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsGroupChat:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    if-eqz v0, :cond_3

    .line 1942
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    move v0, v1

    .line 1945
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->getGroupChatNumbersExceptMe(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1951
    :goto_1
    if-nez v3, :cond_2

    :cond_0
    move v3, v2

    .line 1952
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 1953
    return v1

    :cond_1
    move v0, v2

    .line 1942
    goto :goto_0

    .line 1948
    :catch_0
    move-exception v3

    .line 1949
    invoke-static {v3}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    move-object v3, v4

    goto :goto_1

    .line 1946
    :catch_1
    move-exception v3

    .line 1947
    invoke-static {v3}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    move-object v3, v4

    goto :goto_1

    .line 1951
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_2

    .line 1956
    :cond_3
    return v2
.end method

.method public isMyPcConversation()Z
    .locals 1

    .prologue
    .line 2018
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsMyPcConversation:Z

    return v0
.end method

.method public isPcChat()Z
    .locals 2

    .prologue
    .line 2014
    iget v0, p0, Lcom/android/mms/data/Conversation;->mRcsChatType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1917
    iget v1, p0, Lcom/android/mms/data/Conversation;->mIsTop:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAsRead()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eqz v0, :cond_1

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    .line 432
    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/data/Conversation$2;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 483
    return-void
.end method

.method public markAsReadDelayNotification()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    .line 504
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 508
    new-instance v1, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/data/Conversation$3;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 810
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    monitor-exit p0

    .line 811
    return-void

    .line 813
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 814
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForwardRecipientNumber([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mForwardRecipientNumber:[Ljava/lang/String;

    .line 1913
    return-void
.end method

.method public setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V
    .locals 0

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mGroupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    .line 1938
    return-void
.end method

.method public setHasMmsForward(Z)V
    .locals 0

    .prologue
    .line 1904
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasMmsForward:Z

    .line 1905
    return-void
.end method

.method public declared-synchronized setIsChecked(Z)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 890
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 891
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsGroupChat(Z)V
    .locals 0

    .prologue
    .line 1929
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mIsGroupChat:Z

    .line 1930
    return-void
.end method

.method public declared-synchronized setMessageCount(I)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 836
    :try_start_0
    iput p1, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 837
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMyPcConversation(Z)V
    .locals 0

    .prologue
    .line 2022
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mIsMyPcConversation:Z

    .line 2023
    return-void
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 776
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecipients before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 782
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 784
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecipients after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 787
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    monitor-enter p0

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%"

    const-string/jumbo v2, "%%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string/jumbo v1, "[%s] (tid %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-wide v4, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
