.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 67
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 68
    iput-object p4, p0, Lcom/android/mms/transaction/SendTransaction;->mId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 72
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 176
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

    .line 177
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 178
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/SendTransaction;->mFailReason:I

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 182
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "SendTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 88
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Sending rate limit surpassed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    if-eq v2, v10, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Delivery failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 89
    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 94
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v8, v0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 98
    invoke-virtual {v8, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 101
    new-instance v5, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v5, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    const-string/jumbo v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 103
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    iget v2, p0, Lcom/android/mms/transaction/SendTransaction;->mSubId:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lineNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 114
    :cond_2
    # FEAT(rcs): RCS (group) chat / file transfer instead of MMS when every recipient has RCS
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v2, v8, v3}, Lcom/android/mms/transaction/WaveRcsSend;->interceptMms(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :wave_mms

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    return-void

    :wave_mms
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v4

    .line 116
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    .line 115
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v4

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 119
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/transaction/SendTransaction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "), resp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    .line 123
    invoke-static {}, Lcom/android/mms/transaction/PduParserUtil;->shouldParseContentDisposition()Z

    move-result v3

    .line 122
    invoke-direct {v2, v4, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/SendConf;

    .line 124
    if-nez v2, :cond_3

    .line 125
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "No M-Send.conf received."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_5

    .line 133
    const-string/jumbo v2, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inconsistent Transaction-ID: req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    const-string/jumbo v5, ", conf="

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    if-eq v2, v10, :cond_4

    .line 166
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Delivery failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 135
    return-void

    .line 141
    :cond_5
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v5, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 142
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v8

    .line 143
    const-string/jumbo v3, "resp_st"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const/16 v3, 0x80

    if-eq v8, v3, :cond_7

    .line 146
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server returned an error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    if-eq v2, v10, :cond_6

    .line 166
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Delivery failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 149
    return-void

    .line 152
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string/jumbo v3, "m_id"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 154
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 161
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    if-eq v2, v10, :cond_8

    .line 166
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Delivery failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 172
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    .line 163
    :try_start_4
    const-string/jumbo v3, "Mms"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    if-eq v2, v10, :cond_9

    .line 166
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Delivery failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v2

    .line 165
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    if-eq v3, v10, :cond_a

    .line 166
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 167
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v4, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 168
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "Delivery failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 164
    throw v2
.end method
