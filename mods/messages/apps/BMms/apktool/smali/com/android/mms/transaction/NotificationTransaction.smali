.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 6

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 121
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 122
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p4

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 129
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 130
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 92
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 96
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 95
    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/NotificationTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 107
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static allowAutoDownload()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v2

    .line 144
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 145
    const/4 v3, 0x3

    .line 144
    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 146
    :goto_0
    if-eqz v2, :cond_0

    xor-int/lit8 v0, v1, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 144
    goto :goto_0
.end method

.method public static isMmsSizeTooLarge(Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v0

    long-to-int v0, v0

    .line 151
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    .line 152
    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    const-string/jumbo v1, "pref_key_mms_send_delivery_report"

    const/4 v2, 0x0

    .line 304
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 311
    # FIX(mms ack): M-NotifyResp.ind is mandatory (without it the MMSC may re-push the same
    # message). The "send delivery report" pref now only sets X-Mms-Report-Allowed.
    goto :cond_0

    .line 318
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    .line 320
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    .line 319
    const/16 v2, 0x12

    .line 318
    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 324
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    # FIX(mms ack): the framework composer drops X-Mms-Report-Allowed from M-NotifyResp.ind
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/ArgonMmsReceive;->withReportAllowed([BLandroid/content/Context;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_1
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    # FIX(mms ack): the framework composer drops X-Mms-Report-Allowed from M-NotifyResp.ind
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/ArgonMmsReceive;->withReportAllowed([BLandroid/content/Context;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 333
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 341
    iput v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mFailReason:I

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 343
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "NotificationTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v0, 0x84

    const/16 v6, 0x81

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    .line 157
    invoke-static {}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v7

    .line 158
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMmsMemoryFull()Z

    move-result v8

    .line 159
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-static {v1}, Lcom/android/mms/transaction/NotificationTransaction;->isMmsSizeTooLarge(Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v9

    .line 168
    const/16 v1, 0x83

    .line 170
    if-nez v7, :cond_3

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v2, 0x80

    invoke-virtual {v3, v0, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 172
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 285
    if-eqz v7, :cond_0

    if-nez v8, :cond_0

    if-eqz v9, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 292
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "NotificationTransaction failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 173
    return-void

    .line 176
    :cond_3
    if-nez v8, :cond_4

    if-eqz v9, :cond_8

    .line 177
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v2, 0x82

    invoke-virtual {v3, v0, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 178
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 285
    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    if-eqz v9, :cond_6

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 290
    :cond_6
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v12, :cond_7

    .line 291
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 292
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "NotificationTransaction failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 179
    return-void

    .line 182
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v5, 0x81

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 197
    :goto_0
    if-eqz v2, :cond_19

    .line 198
    :try_start_4
    new-instance v1, Lcom/google/android/mms/pdu/PduParser;

    .line 199
    invoke-static {}, Lcom/android/mms/transaction/PduParserUtil;->shouldParseContentDisposition()Z

    move-result v3

    .line 198
    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    if-eq v2, v0, :cond_12

    .line 201
    :cond_9
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid M-RETRIEVE.CONF PDU. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    if-eqz v1, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 264
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_a
    :goto_3
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 279
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 280
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 285
    if-eqz v7, :cond_b

    if-nez v8, :cond_b

    if-eqz v9, :cond_c

    .line 288
    :cond_b
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v12, :cond_d

    .line 291
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 292
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "NotificationTransaction failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 296
    :goto_4
    return-void

    .line 193
    :catch_0
    move-exception v3

    .line 194
    :try_start_5
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    :try_start_6
    const-string/jumbo v1, "Mms"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 285
    if-eqz v7, :cond_e

    if-nez v8, :cond_e

    if-eqz v9, :cond_f

    .line 288
    :cond_e
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 290
    :cond_f
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v12, :cond_10

    .line 291
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 292
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "NotificationTransaction failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_10
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto :goto_4

    .line 202
    :cond_11
    :try_start_7
    const-string/jumbo v1, "null pdu"

    goto/16 :goto_1

    .line 207
    :cond_12
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 208
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 209
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 208
    const/4 v3, 0x1

    .line 209
    const/4 v5, 0x0

    # FEAT(self number): learn our own number from 1:1 MMS when the SIM has none; v3 =
    # createThreadId (false when ArgonSelf.afterPersist picks the group thread itself)
    invoke-static {v1, v4}, Lcom/android/mms/argon/ArgonSelf;->beforePersist(Lcom/google/android/mms/pdu/GenericPdu;Z)Z

    move-result v3

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v10

    # FEAT(self number): file under the right group thread when the SIM has no number
    invoke-static {v10, v4}, Lcom/android/mms/argon/ArgonSelf;->afterPersist(Landroid/net/Uri;Z)V

    .line 212
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 219
    instance-of v0, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v0, :cond_15

    .line 220
    const-string/jumbo v0, "date"

    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    :goto_5
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 226
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 227
    if-eqz v1, :cond_14

    .line 229
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 230
    const-string/jumbo v0, "sub_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 231
    const-string/jumbo v2, "sub_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 236
    :cond_13
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_14
    :goto_6
    const-string/jumbo v0, "m_size"

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 242
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    move-object v3, v11

    .line 241
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 246
    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotificationTransaction received new mms message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 251
    sget-object v2, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 250
    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    iput-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    # PERF(mms notification): notify now, not after the NotifyResp round trip
    invoke-static {v10}, Lcom/android/mms/transaction/ArgonPerf;->notifyEarly(Landroid/net/Uri;)V

    move v0, v6

    .line 255
    goto/16 :goto_2

    .line 222
    :cond_15
    const-string/jumbo v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 285
    if-eqz v7, :cond_16

    if-nez v8, :cond_16

    if-eqz v9, :cond_17

    .line 288
    :cond_16
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 290
    :cond_17
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    if-eq v1, v12, :cond_18

    .line 291
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 292
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "NotificationTransaction failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_18
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 283
    throw v0

    .line 233
    :catch_2
    move-exception v0

    .line 234
    :try_start_a
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 236
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 235
    throw v0

    .line 266
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_3

    .line 270
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    if-nez v1, :cond_a

    .line 271
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :cond_19
    move v0, v1

    goto/16 :goto_2

    .line 264
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
