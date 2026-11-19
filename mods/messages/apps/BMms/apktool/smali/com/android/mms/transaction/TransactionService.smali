.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$1;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/transaction/TransactionService;


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mIsAvailable:[Z

.field private mMmsConnecvivityRetryCount:I

.field private mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

.field private mMmsNetworkRequest:[Landroid/net/NetworkRequest;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/mms/transaction/TransactionService;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mIsAvailable:[Z

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/transaction/TransactionService;Ljava/lang/String;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->onMmsPdpConnected(Ljava/lang/String;Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/TransactionService;->sInstance:Lcom/android/mms/transaction/TransactionService;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 182
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    .line 183
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    .line 185
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mIsAvailable:[Z

    .line 186
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 307
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 927
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "mms acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 929
    return-void
.end method

.method private buildNetworkRequest(Ljava/lang/String;)Landroid/net/NetworkRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 304
    return-object v0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 918
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 919
    const-string/jumbo v1, "MMS Connectivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 920
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 922
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDefaultSmsSubscriptionId()I
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getNetworkCallback(Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 2

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 198
    new-instance v1, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;Ljava/lang/String;I)V

    return-object v1
.end method

.method private getRetryIndex(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 721
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 722
    const-string/jumbo v1, "protocol"

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 723
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 728
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 727
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 729
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const-string/jumbo v0, "retry_index"

    .line 730
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 732
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRetryIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    if-eqz v1, :cond_0

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_0
    return v0

    .line 735
    :cond_1
    const/4 v0, 0x0

    .line 737
    if-eqz v1, :cond_2

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_2
    return v0

    .line 736
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 737
    :goto_0
    if-eqz v1, :cond_3

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 736
    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private getSubIdFromDb(Landroid/net/Uri;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    .line 372
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cursor= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 375
    if-eqz v1, :cond_3

    .line 377
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    const-string/jumbo v0, "sub_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 379
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId in db = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :goto_0
    if-eqz v2, :cond_0

    .line 385
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_0
    :goto_1
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destination subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v0

    .line 383
    :catchall_0
    move-exception v0

    .line 384
    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_1
    throw v0

    :cond_2
    move-object v2, v1

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method private getTransactionType(I)I
    .locals 3

    .prologue
    .line 648
    sparse-switch p1, :sswitch_data_0

    .line 656
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v0, -0x1

    return v0

    .line 650
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 652
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 654
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 648
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isAirplaneModeActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 411
    const-string/jumbo v2, "airplane_mode_on"

    .line 410
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentRatIwlan()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 416
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 417
    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 418
    goto :goto_0

    :cond_1
    move v0, v1

    .line 417
    goto :goto_0
.end method

.method private isLastRetry(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 754
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 755
    const-string/jumbo v1, "protocol"

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 756
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 760
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 761
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 760
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 762
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    const-string/jumbo v0, "retry_index"

    .line 763
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 765
    new-instance v2, Lcom/android/mms/transaction/DefaultRetryScheme;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 766
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLastRetry retryIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {v2}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-lt v0, v2, :cond_1

    .line 773
    if-eqz v1, :cond_0

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_0
    return v8

    .line 771
    :cond_1
    const/4 v0, 0x0

    .line 773
    if-eqz v1, :cond_2

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_2
    return v0

    .line 772
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 773
    :goto_0
    if-eqz v1, :cond_3

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private isMmsAllowed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 396
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isAirplaneModeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const-string/jumbo v0, "Airplane mode is ON, MMS may not be allowed."

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x0

    .line 401
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isCurrentRatIwlan()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "Current RAT is IWLAN, MMS allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_1
    return v1

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 644
    if-ltz p0, :cond_0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 3

    .prologue
    .line 662
    if-eqz p3, :cond_0

    .line 663
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "launchTransaction: no network error!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v0

    .line 665
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 664
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(IILandroid/net/Uri;Z)V

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 669
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 670
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchTransaction: sending message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    return-void
.end method

.method private onMmsPdpConnected(Ljava/lang/String;Landroid/net/Network;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMmsPdpConnected subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 257
    if-nez v0, :cond_1

    .line 258
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "mms type is null or mobile data is turned off, bail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string/jumbo v1, "2GVoiceCallEnded"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const-string/jumbo v0, "   reason is 2GVoiceCallEnded, retrying mms connectivity"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 266
    return-void

    .line 269
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    .line 271
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 270
    invoke-direct {v1, p0, v0, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 274
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    const-string/jumbo v0, "   empty MMSC url, bail"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->markAllPendingTransactionsAsFailed()V

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    .line 279
    return-void

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 282
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto :goto_0

    .line 284
    :cond_4
    const-string/jumbo v1, "   TYPE_MOBILE_MMS not connected, bail"

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string/jumbo v0, "   retrying mms connectivity for it\'s available"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNetworkUnavailable(IILandroid/net/Uri;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x7

    const/4 v2, 0x6

    const v5, 0x7f09000f

    const/4 v1, -0x1

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNetworkUnavailable: sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 680
    if-nez p2, :cond_0

    .line 681
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 680
    if-eqz v3, :cond_0

    .line 683
    return-void

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/content/Context;Landroid/net/Uri;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;Landroid/net/Uri;)V

    .line 694
    :cond_1
    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    .line 695
    if-nez p2, :cond_5

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 697
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->isLastRetry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 713
    :cond_3
    :goto_0
    if-eq v0, v1, :cond_4

    .line 714
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 717
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 718
    return-void

    .line 702
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 703
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_7

    .line 704
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->isLastRetry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 705
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 707
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 708
    const/4 v0, 0x3

    invoke-direct {p0, p3, v0}, Lcom/android/mms/transaction/TransactionService;->updateMsgErrorType(Landroid/net/Uri;I)V

    :cond_8
    move v0, v2

    .line 710
    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method private releaseNetworkRequest(I)V
    .locals 5

    .prologue
    # PERF(mms network): linger like AOSP MmsNetworkManager, so back-to-back MMS skip the bring-up
    invoke-static {p0, p1}, Lcom/android/mms/transaction/WavePerf;->lingerMmsNetwork(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 965
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    # FIX(mms no subscription): nothing was requested for an invalid phone id
    if-gez v0, :wave_phone_ok

    return-void

    :wave_phone_ok

    .line 966
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mIsAvailable:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 968
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseNetworkRequest phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 971
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    aput-object v4, v1, v0

    .line 972
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    aput-object v4, v1, v0

    .line 974
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "mms releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 937
    :cond_0
    return-void
.end method

.method private stopSelfIfIdle(I)V
    .locals 2

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const-string/jumbo v0, "stopSelfIfIdle: STOP!"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 641
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateMsgErrorType(Landroid/net/Uri;I)V
    .locals 8

    .prologue
    .line 745
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 746
    const-string/jumbo v0, "err_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 748
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 749
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 750
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

    .line 748
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 751
    return-void
.end method


# virtual methods
.method protected beginMmsConnectivity(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    # FEAT(mms testnet): no carrier MMS APN on the development test network
    invoke-static {}, Lcom/android/mms/transaction/WaveMmsReceive;->testNet()Z

    move-result v0

    if-eqz v0, :wave_real_apn

    return-void

    :wave_real_apn

    .line 946
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    # FIX(mms no subscription): fail like "no MMS connectivity" instead of crashing
    if-gez v0, :wave_phone_ok

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "no active subscription for MMS"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :wave_phone_ok

    .line 947
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "beginMmsConnectivity for subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->buildNetworkRequest(Ljava/lang/String;)Landroid/net/NetworkRequest;

    move-result-object v2

    aput-object v2, v1, v0

    .line 951
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getNetworkCallback(Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    aput-object v2, v1, v0

    .line 953
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    aget-object v0, v3, v0

    .line 954
    const v3, 0xea60

    .line 953
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 955
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "beginMmsConnectivity:call ConnectivityManager.requestNetwork "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 957
    const/4 v2, 0x7

    .line 956
    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 958
    const-wide/32 v2, 0xea60

    .line 956
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 961
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 962
    return-void
.end method

.method protected endMmsConnectivity()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 977
    :goto_0
    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 978
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 979
    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_0
    return-void
.end method

.method protected endMmsConnectivity(I)V
    .locals 2

    .prologue
    .line 985
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "endMmsConnectivity for subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 989
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 990
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->releaseNetworkRequest(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 995
    return-void

    .line 992
    :catchall_0
    move-exception v0

    .line 993
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 992
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 338
    const-string/jumbo v0, "Creating TransactionService"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 339
    sput-object p0, Lcom/android/mms/transaction/TransactionService;->sInstance:Lcom/android/mms/transaction/TransactionService;

    .line 341
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 342
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneCount:I

    .line 345
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneCount:I

    new-array v0, v0, [Landroid/net/NetworkRequest;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkRequest:[Landroid/net/NetworkRequest;

    .line 346
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneCount:I

    new-array v0, v0, [Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsNetworkCallback:[Landroid/net/ConnectivityManager$NetworkCallback;

    .line 347
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mIsAvailable:[Z

    .line 352
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 356
    new-instance v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 357
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 781
    const-string/jumbo v0, "Destroying TransactionService"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const-string/jumbo v0, "TransactionService exiting with transaction still pending"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 788
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 790
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/TransactionService;->sInstance:Lcom/android/mms/transaction/TransactionService;

    .line 791
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;I)V
    .locals 13

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const-string/jumbo v0, "TransactionService: is not the default sms app"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 426
    return-void

    .line 428
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 429
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 431
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 432
    return-void

    .line 434
    :cond_2
    const/4 v1, 0x0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewIntent: serviceId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v2, " intent="

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 440
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    .line 444
    const-string/jumbo v4, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 445
    if-nez v0, :cond_4

    .line 453
    :cond_3
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cursor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 456
    if-eqz v4, :cond_11

    .line 458
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNewIntent: cursor.count="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " action="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 462
    if-nez v0, :cond_6

    .line 463
    const-string/jumbo v0, "onNewIntent: no pending messages. Stopping service."

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 464
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 465
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 466
    return-void

    .line 445
    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v4, "uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 446
    const-string/jumbo v4, "canceluri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 444
    if-nez v4, :cond_3

    .line 587
    :cond_5
    if-eqz v0, :cond_13

    const-string/jumbo v2, "canceluri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 588
    const-string/jumbo v0, "canceluri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 590
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 591
    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->cancelTransaction(Landroid/net/Uri;)V

    goto :goto_0

    .line 469
    :cond_6
    :try_start_1
    const-string/jumbo v0, "msg_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 471
    const-string/jumbo v0, "msg_type"

    .line 470
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 473
    const-string/jumbo v0, "retry_index"

    .line 472
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 475
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 476
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 477
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v8

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onNewIntent: msgType="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 481
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 482
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 480
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 483
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    .line 501
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 541
    :goto_3
    :pswitch_1
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/TransactionService;->getSubIdFromDb(Landroid/net/Uri;)I

    move-result v0

    .line 543
    const-string/jumbo v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "destination Sub Id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-gez v0, :cond_7

    .line 545
    const-string/jumbo v0, "Mms"

    const-string/jumbo v10, "Subscriptions are not yet ready."

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 555
    const-string/jumbo v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Override with default Sms subId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isMmsAllowed()Z

    move-result v10

    if-nez v10, :cond_e

    .line 560
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 559
    if-eqz v10, :cond_e

    .line 561
    const-string/jumbo v0, "Mms"

    const-string/jumbo v10, "mobileData off or no mms apn or APM, Abort"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x1

    if-ne v8, v0, :cond_8

    .line 564
    const/16 v0, 0x82

    .line 563
    invoke-virtual {v3, v9, v0}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 566
    :cond_8
    invoke-direct {p0, p2, v8, v9, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(IILandroid/net/Uri;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 579
    :catchall_0
    move-exception v0

    .line 580
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 579
    throw v0

    .line 483
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 511
    :pswitch_2
    :try_start_2
    const-string/jumbo v0, "err_type"

    .line 510
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 509
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 512
    invoke-virtual {v3}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v10

    .line 513
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onNewIntent: failureType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 514
    const-string/jumbo v12, " action="

    .line 513
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 514
    const-string/jumbo v12, " isTransientFailure:"

    .line 513
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 515
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v12

    .line 513
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 515
    const-string/jumbo v12, " autoDownload="

    .line 513
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 517
    if-nez v10, :cond_a

    xor-int/lit8 v10, v1, 0x1

    if-eqz v10, :cond_a

    .line 520
    const-string/jumbo v0, "onNewIntent: skipping - autodownload off"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 524
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 526
    const/16 v10, 0x81

    .line 525
    invoke-virtual {v3, v9, v10}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 532
    :cond_b
    if-eqz v0, :cond_c

    .line 533
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v0

    .line 532
    :goto_4
    if-nez v0, :cond_d

    .line 534
    const-string/jumbo v0, "onNewIntent: skipping - permanent error"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 532
    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    .line 537
    :cond_d
    const-string/jumbo v0, "onNewIntent: falling through and processing"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 570
    :cond_e
    new-instance v1, Lcom/android/mms/transaction/TransactionBundle;

    .line 571
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 570
    invoke-direct {v1, v8, v10, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;I)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNewIntent: launchTransaction uri="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 580
    :cond_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_10
    :goto_5
    return-void

    .line 583
    :cond_11
    const-string/jumbo v0, "onNewIntent: no pending messages. Stopping service."

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 584
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 585
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_5

    .line 593
    :cond_12
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 594
    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->cancelTransaction(Landroid/net/Uri;)V

    goto :goto_6

    .line 597
    :cond_13
    const-string/jumbo v0, "onNewIntent: launch transaction..."

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 602
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSubIdFromDb(Landroid/net/Uri;)I

    move-result v0

    .line 603
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destination Sub Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-gez v0, :cond_14

    .line 605
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 606
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Override with default Sms subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_14
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isMmsAllowed()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16

    .line 611
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Either mobile data is off or apn not present, Abort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/16 v0, 0x82

    invoke-virtual {v3, v2, v0}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 615
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getRetryIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    .line 616
    :goto_7
    const-string/jumbo v1, "type"

    .line 617
    const/4 v3, 0x0

    .line 616
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 618
    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(IILandroid/net/Uri;Z)V

    .line 619
    return-void

    .line 615
    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    .line 622
    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 623
    const-string/jumbo v3, "subscription"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 626
    invoke-direct {p0, p2, v0, v1}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto/16 :goto_5

    .line 501
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 363
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 364
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 802
    check-cast p1, Lcom/android/mms/transaction/Transaction;

    # FEAT(mms receive): reveal a held notification if its download didn't produce a message
    invoke-static {p0, p1}, Lcom/android/mms/transaction/WaveMmsReceive;->onTransactionUpdate(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;)V

    .line 803
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update transaction "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 808
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 811
    const-string/jumbo v0, "update: handle next pending transaction..."

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 815
    const-string/jumbo v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update: currentTxn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 816
    const-string/jumbo v7, ", nextTxn = "

    .line 815
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->getSubId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getSubId()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 819
    const-string/jumbo v0, "Mms"

    const-string/jumbo v5, "update: Next pending txn is on different sub. Finish for current sub."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 826
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v5

    .line 825
    const/4 v6, 0x4

    .line 824
    invoke-virtual {v0, v6, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 827
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v4

    .line 837
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    .line 840
    const-string/jumbo v6, "state"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    packed-switch v5, :pswitch_data_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Transaction state unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 902
    const-string/jumbo v1, " "

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 906
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update: broadcast transaction result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 910
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 911
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 913
    return-void

    .line 829
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const-string/jumbo v0, "update: endMmsConnectivity"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 909
    :catchall_1
    move-exception v0

    .line 910
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 911
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 909
    throw v0

    .line 833
    :cond_2
    :try_start_5
    const-string/jumbo v0, "update: mProcessing is not empty"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 844
    :pswitch_0
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transaction complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 846
    const-string/jumbo v1, "uri"

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 855
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 854
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 858
    const/4 v2, 0x0

    .line 856
    # PERF(mms notification): skipped when WavePerf.notifyEarly already notified
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/WavePerf;->updateAfterTransaction(Landroid/content/Context;JZ)V

    .line 859
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 860
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->updateThreadAttachTypeByThreadId(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 863
    :pswitch_2
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_1

    .line 868
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    .line 869
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    .line 871
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getFailReason()I

    move-result v0

    .line 870
    if-ne v1, v0, :cond_4

    move v0, v1

    .line 872
    :goto_2
    if-eqz v7, :cond_3

    .line 873
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->isLastRetry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 875
    const/4 v2, 0x2

    if-ne v6, v2, :cond_6

    .line 876
    if-eqz v0, :cond_5

    .line 877
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 878
    const/4 v1, 0x6

    .line 877
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 898
    :cond_3
    :goto_3
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Transaction failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 870
    goto :goto_2

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 882
    :cond_6
    if-eq v6, v1, :cond_7

    .line 883
    if-nez v6, :cond_3

    .line 884
    :cond_7
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v1

    if-nez v1, :cond_8

    .line 885
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 884
    if-eqz v1, :cond_3

    .line 886
    :cond_8
    if-eqz v0, :cond_9

    .line 887
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 888
    const/4 v1, 0x7

    .line 887
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 890
    :cond_9
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 891
    const/4 v1, 0x5

    .line 890
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 842
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 849
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
