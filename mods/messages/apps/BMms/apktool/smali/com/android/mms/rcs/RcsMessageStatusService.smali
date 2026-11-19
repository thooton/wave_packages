.class public Lcom/android/mms/rcs/RcsMessageStatusService;
.super Landroid/app/IntentService;
.source "RcsMessageStatusService.java"


# static fields
.field private static DEFAULT_SILENCE:I

.field private static DEFAULT_STATUS:I

.field private static DEFAULT_THREAD_ID:J

.field private static DEFAULT_THREAD_SIZE:J

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final NUMBER_OF_CORES:I

.field private static RCS_SILENCE_STATUS:I

.field private static pool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static runningCount:I

.field private static runningId:I

.field private static taskCount:J


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    return-wide v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_SIZE:J

    return-wide v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/mms/rcs/RcsMessageStatusService;->runningCount:I

    return v0
.end method

.method static synthetic -get3()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    return-wide v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/mms/rcs/RcsMessageStatusService;->runningCount:I

    return p0
.end method

.method static synthetic -set1(J)J
    .locals 0

    sput-wide p0, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 54
    sput v2, Lcom/android/mms/rcs/RcsMessageStatusService;->runningCount:I

    .line 55
    sput v2, Lcom/android/mms/rcs/RcsMessageStatusService;->runningId:I

    .line 56
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    .line 57
    sput-wide v4, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    .line 58
    sput-wide v4, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_SIZE:J

    .line 59
    const/16 v0, -0xb

    sput v0, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_STATUS:I

    .line 60
    sput v2, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_SILENCE:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/rcs/RcsMessageStatusService;->RCS_SILENCE_STATUS:I

    .line 66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/mms/rcs/RcsMessageStatusService;->NUMBER_OF_CORES:I

    .line 67
    sget v0, Lcom/android/mms/rcs/RcsMessageStatusService;->NUMBER_OF_CORES:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/mms/rcs/RcsMessageStatusService;->MAXIMUM_POOL_SIZE:I

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    sget v2, Lcom/android/mms/rcs/RcsMessageStatusService;->NUMBER_OF_CORES:I

    .line 71
    sget v3, Lcom/android/mms/rcs/RcsMessageStatusService;->MAXIMUM_POOL_SIZE:I

    .line 72
    const-wide/16 v4, 0x1

    .line 73
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 75
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    .line 69
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/android/mms/rcs/RcsMessageStatusService;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/mms/rcs/RcsMessageStatusService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsMessageStatusService;->setIntentRedelivery(Z)V

    .line 86
    return-void
.end method

.method private disposeGroupChatNewMessage(J)V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatByThreadId(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getPolicy()I

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentlyDisplayedThreadId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 187
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/rcs/RcsMessageStatusService;->notifyNewMessage(J)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyNewMessage(J)V
    .locals 3

    .prologue
    .line 171
    sget-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentlyDisplayedThreadId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0, p1, p2}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isPublicAccountMessage(Landroid/content/Context;J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 171
    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 174
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const-wide/16 v4, -0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 97
    sget v0, Lcom/android/mms/rcs/RcsMessageStatusService;->runningId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/rcs/RcsMessageStatusService;->runningId:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string/jumbo v2, "com.suntek.rcs.action.ACTION_MESSAGE_NOTIFY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const-string/jumbo v1, "threadId"

    sget-wide v2, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 102
    const-string/jumbo v1, "silence"

    sget v4, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_SILENCE:I

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    sget v4, Lcom/android/mms/rcs/RcsMessageStatusService;->RCS_SILENCE_STATUS:I

    if-eq v1, v4, :cond_0

    .line 104
    invoke-direct {p0, v2, v3}, Lcom/android/mms/rcs/RcsMessageStatusService;->disposeGroupChatNewMessage(J)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 138
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/mms/rcs/RcsMessageStatusService;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/mms/rcs/RcsMessageStatusService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/rcs/RcsMessageStatusService$1;-><init>(Lcom/android/mms/rcs/RcsMessageStatusService;ILandroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 108
    :cond_2
    const-string/jumbo v2, "com.suntek.rcs.action.ACTION_MESSAGE_STATUS_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const-string/jumbo v1, "id"

    sget-wide v2, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 110
    const-string/jumbo v1, "threadId"

    sget-wide v4, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_THREAD_ID:J

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 111
    const-string/jumbo v1, "status"

    sget v6, Lcom/android/mms/rcs/RcsMessageStatusService;->DEFAULT_STATUS:I

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    const/16 v6, 0x80

    if-ne v1, v6, :cond_1

    .line 113
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFaildMessageType(Landroid/content/Context;J)V

    .line 114
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentlyDisplayedThreadId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    .line 115
    invoke-static {v2, v1, v4, v5, v10}, Lcom/android/mms/rcs/RcsNotifyManager;->sendMessageFailNotif(Landroid/content/Context;IJZ)V

    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v2, "com.suntek.rcs.action.ACTION_MESSAGE_SMS_POLICY_NOT_SET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 121
    const-string/jumbo v1, "threadId"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 124
    const-string/jumbo v1, "subId"

    invoke-virtual {p1, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 125
    const-string/jumbo v6, "number"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    const-string/jumbo v7, "content"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACTION_MESSAGE_SMS_POLICY_NOT_SET subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 128
    if-eq v1, v11, :cond_1

    .line 129
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v8

    .line 130
    new-array v9, v13, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    .line 131
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v12

    aput-object v7, v2, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    .line 129
    invoke-virtual {v8, v9, v2}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->addSendMessage([Ljava/lang/Long;[Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v2, "com.suntek.rcs.action.ACTION_LUNCHER_CONFRMDIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/RcsMessageStatusService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    # FEAT(rcs): our action (or a sticky restart) keeps the RCS engine's process alive
    invoke-static {p0, p1}, Lcom/android/mms/wave/RcsHost;->onStartCommand(Landroid/app/Service;Landroid/content/Intent;)I

    move-result v0

    if-ltz v0, :wave_stock

    return v0

    :wave_stock
    .line 90
    sget-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RcsMessageStatusService.onStartCommand: taskCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/mms/rcs/RcsMessageStatusService;->taskCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
