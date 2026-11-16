.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private isCancelMyself:Z

.field private final mContentLocation:Ljava/lang/String;

.field private mLocked:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "ct_l"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "locked"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 90
    const-string/jumbo v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 92
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mId:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 103
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string/jumbo v1, "Initializing from X-Mms-Content-Location is abandoned!"

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    sget-object v3, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    .line 107
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    iput-boolean v8, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 111
    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 117
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    return-object v0

    :cond_0
    move v0, v8

    .line 116
    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_2
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    throw v0
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 246
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 249
    const-string/jumbo v4, "(m_id = ? AND ct_l = ? AND m_type = ?)"

    .line 252
    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v7

    aput-object p2, v5, v8

    .line 253
    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 257
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v7

    const-string/jumbo v0, "sub"

    aput-object v0, v3, v8

    const-string/jumbo v0, "sub_cs"

    aput-object v0, v3, v9

    move-object v0, p0

    .line 255
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_1

    .line 262
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    invoke-static {v1, p1}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 265
    return v0

    .line 268
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_1
    return v7

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 267
    throw v0
.end method

.method private static isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_5

    .line 285
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    .line 289
    const-string/jumbo v3, "sub"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 290
    const-string/jumbo v4, "sub_cs"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 291
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 293
    if-eqz v3, :cond_0

    .line 294
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 297
    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 299
    return v5

    .line 300
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 301
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 304
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 305
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    return v5

    .line 288
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 312
    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "pref_key_mms_send_delivery_report"

    const/4 v2, 0x0

    .line 322
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v0

    .line 344
    if-eqz v0, :cond_1

    .line 346
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .line 347
    const/16 v2, 0x12

    .line 346
    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 350
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 354
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([B)[B

    goto :goto_0
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 365
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    const-string/jumbo v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 374
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

    .line 375
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 376
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 377
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mFailReason:I

    .line 378
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 379
    return-void
.end method

.method public cancelTransaction(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    .line 391
    :cond_0
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "RetrieveTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getMessageSize(Landroid/net/Uri;)I

    move-result v8

    .line 143
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v3, 0x81

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 145
    iget-boolean v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v1, :cond_2

    .line 146
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 147
    const/16 v2, 0x82

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 239
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Retrieval failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 148
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_0

    .line 151
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v1

    .line 153
    iget-boolean v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v2, :cond_5

    .line 154
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 155
    const/16 v2, 0x82

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v10, :cond_3

    .line 233
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 239
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Retrieval failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 156
    return-void

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_1

    .line 160
    :cond_5
    :try_start_2
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    .line 161
    invoke-static {}, Lcom/android/mms/transaction/PduParserUtil;->shouldParseContentDisposition()Z

    move-result v3

    .line 160
    invoke-direct {v2, v1, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 162
    if-nez v1, :cond_7

    .line 163
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_3
    const-string/jumbo v1, "Mms"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v10, :cond_6

    .line 233
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v0, :cond_10

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 239
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Retrieval failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 243
    :goto_3
    return-void

    .line 167
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "RetrieveTransaction DuplicateMessage !!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_8
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 174
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 215
    :goto_4
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 215
    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    if-eqz v0, :cond_9

    .line 221
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 222
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 228
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v10, :cond_a

    .line 233
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v0, :cond_f

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 238
    :goto_5
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 239
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Retrieval failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    goto :goto_3

    .line 177
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 178
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 179
    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 178
    const/4 v3, 0x1

    .line 179
    const/4 v5, 0x0

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    .line 182
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 184
    const-string/jumbo v2, "date"

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 187
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 186
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 188
    if-eqz v2, :cond_d

    .line 190
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 191
    const-string/jumbo v3, "sub_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 192
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RetrieveTransaction: subId value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v4, "sub_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    :cond_c
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_d
    const-string/jumbo v2, "m_size"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 202
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    move-object v5, v9

    .line 201
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 206
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 211
    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    invoke-static {v2, v0, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    if-eq v1, v10, :cond_e

    .line 233
    iget-boolean v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->isCancelMyself:Z

    if-eqz v1, :cond_11

    .line 234
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 238
    :goto_6
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 239
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Retrieval failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 231
    throw v0

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 195
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 236
    :cond_f
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_6
.end method
