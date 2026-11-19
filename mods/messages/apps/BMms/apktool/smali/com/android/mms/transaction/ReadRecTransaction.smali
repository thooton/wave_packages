.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 59
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 60
    iput-object p4, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mId:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 64
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 117
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

    .line 118
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    .line 122
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "ReadRecTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mThread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 84
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 88
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    .line 91
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 93
    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    .line 113
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 107
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 107
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    .line 107
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 108
    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 109
    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v2, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    .line 106
    throw v0
.end method
