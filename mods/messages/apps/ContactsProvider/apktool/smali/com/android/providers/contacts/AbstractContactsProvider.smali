.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field public static final VERBOSE_LOGGING:Z


# instance fields
.field protected final mAllCallingUids:Landroid/util/SparseBooleanArray;

.field protected final mBatchStats:Landroid/util/SparseLongArray;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected final mDeleteInBatchStats:Landroid/util/SparseLongArray;

.field protected final mDeleteStats:Landroid/util/SparseLongArray;

.field protected final mInsertInBatchStats:Landroid/util/SparseLongArray;

.field protected final mInsertStats:Landroid/util/SparseLongArray;

.field private final mOperationDurationMicroStats:Landroid/util/SparseLongArray;

.field private final mOperationNest:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationStartNs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mQueryStats:Landroid/util/SparseLongArray;

.field private mSerializeDbTag:Ljava/lang/String;

.field private mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private final mStartTime:J

.field private final mStatsLock:Ljava/lang/Object;

.field private mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdateInBatchStats:Landroid/util/SparseLongArray;

.field protected final mUpdateStats:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "ContactsProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStartTime:J

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStatsLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    .line 123
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mQueryStats:Landroid/util/SparseLongArray;

    .line 124
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mBatchStats:Landroid/util/SparseLongArray;

    .line 125
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertStats:Landroid/util/SparseLongArray;

    .line 126
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateStats:Landroid/util/SparseLongArray;

    .line 127
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteStats:Landroid/util/SparseLongArray;

    .line 128
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    .line 129
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    .line 130
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    .line 132
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationDurationMicroStats:Landroid/util/SparseLongArray;

    sget-object v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$INST$0:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    .line 134
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationNest:Ljava/lang/ThreadLocal;

    sget-object v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$INST$1:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    .line 135
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationStartNs:Ljava/lang/ThreadLocal;

    .line 53
    return-void
.end method

.method private static doubleForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)D
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 619
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 620
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    .line 621
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 624
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 621
    :cond_1
    return-wide v4

    .line 623
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v4

    .line 624
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    throw v2

    :catch_1
    move-exception v2

    goto :goto_1

    .line 623
    :cond_4
    return-wide v4

    .line 624
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    if-eqz v2, :cond_7

    throw v2

    :catch_3
    move-exception v1

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    if-eq v2, v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static dumpDoubleColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 602
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 603
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Column not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return-void

    .line 607
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    const-string/jumbo v0, "(null)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    goto :goto_0
.end method

.method private static dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 589
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 590
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Column not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    return-void

    .line 594
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const-string/jumbo v0, "(null)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0
.end method

.method private static dumpStringColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 573
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 574
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Column not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    return-void

    .line 578
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    if-nez v0, :cond_1

    .line 580
    const-string/jumbo v0, "(null)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 582
    const-string/jumbo v0, "\"\""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private endTransaction(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 372
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 373
    :cond_0
    const/4 v1, 0x0

    .line 375
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    const/4 v1, 0x1

    .line 378
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V

    .line 379
    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->notifyChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 387
    :cond_3
    return-void

    .line 382
    :catchall_0
    move-exception v0

    .line 384
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 382
    throw v0
.end method

.method static synthetic lambda$-com_android_providers_contacts_AbstractContactsProvider_5439()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_providers_contacts_AbstractContactsProvider_5529()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .locals 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 350
    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 358
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;)V

    .line 294
    :try_start_0
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyBatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ops"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 301
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 302
    new-array v7, v6, [Landroid/content/ContentProviderResult;

    move v4, v2

    move v0, v2

    move v1, v2

    .line 303
    :goto_0
    if-ge v4, v6, :cond_5

    .line 304
    add-int/lit8 v3, v0, 0x1

    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_1

    .line 305
    new-instance v0, Landroid/content/OperationApplicationException;

    .line 306
    const-string/jumbo v2, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    .line 305
    invoke-direct {v0, v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 330
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 333
    throw v0

    .line 310
    :cond_1
    :try_start_3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 311
    if-lez v4, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 312
    sget-boolean v8, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_2

    .line 313
    const-string/jumbo v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "applyBatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " ops finished; about to yield..."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :cond_2
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    add-int/lit8 v1, v1, 0x1

    :cond_3
    move v3, v1

    move v1, v2

    .line 326
    :goto_1
    :try_start_5
    invoke-virtual {v0, p0, v7, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    aput-object v0, v7, v4

    .line 303
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    :cond_4
    move v11, v3

    move v3, v1

    move v1, v11

    .line 311
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 322
    throw v0

    .line 328
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    const/4 v0, 0x1

    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 334
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 329
    return-object v7

    :cond_6
    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;)V

    .line 263
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v3

    .line 264
    array-length v4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v1

    move v0, v1

    .line 267
    :goto_0
    if-ge v2, v4, :cond_1

    .line 268
    :try_start_1
    aget-object v5, p2, v2

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x32

    if-lt v0, v5, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 267
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    :try_start_3
    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 275
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 280
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 284
    throw v0

    .line 279
    :cond_1
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 281
    const/4 v0, 0x1

    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 285
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 283
    return v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 223
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 225
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 226
    if-lez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 229
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 230
    return v1

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 231
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 234
    throw v0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 462
    const-string/jumbo v1, "Database: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v1, "  Uptime: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 467
    const-string/jumbo v1, " minutes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 471
    const-string/jumbo v3, "  Client activities:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v3, "    UID        Query  Insert Update Delete   Batch Insert Update Delete          Sec"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    :goto_0
    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 477
    const-string/jumbo v4, "    %-9d %6d  %6d %6d %6d  %6d %6d %6d %6d %12.3f"

    .line 476
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    .line 478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 479
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 480
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 481
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 482
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 483
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 484
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 485
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 486
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 487
    iget-object v6, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationDurationMicroStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v6, 0x9

    aput-object v3, v5, v6

    .line 476
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    monitor-exit v1

    .line 492
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v0, :cond_1

    .line 493
    const-string/jumbo v0, "mDbHelper is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 497
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 498
    const-string/jumbo v0, "  Accounts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 501
    :try_start_2
    const-string/jumbo v0, "SELECT * FROM accounts ORDER BY _id"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result-object v1

    .line 502
    const/4 v0, -0x1

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 503
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v0, "_id"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v0, "account_name"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpStringColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v0, "account_type"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpStringColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v0, "data_set"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpStringColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    goto :goto_1

    .line 514
    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    if-eqz v2, :cond_7

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 567
    :catch_1
    move-exception v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    :cond_3
    return-void

    .line 514
    :cond_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_8

    :try_start_8
    throw v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    if-eq v2, v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v0

    .line 516
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 517
    const-string/jumbo v0, "  Contacts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v0, "    # of visible: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "SELECT count(*) FROM default_directory"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 520
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 522
    const-string/jumbo v0, "    # of invisible: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v0, "SELECT count(*) FROM contacts"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 524
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 526
    const-string/jumbo v0, "    Max # of raw contacts: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v0, "SELECT max(c) FROM (SELECT _id, count(*) as c FROM raw_contacts GROUP BY contact_id)"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 528
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 530
    const-string/jumbo v0, "    Avg # of raw contacts: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v0, "SELECT avg(c) FROM (SELECT _id, count(*) as c FROM raw_contacts GROUP BY contact_id)"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->doubleForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    .line 532
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 534
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 535
    const-string/jumbo v0, "  Raw contacts (per account):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 536
    :try_start_9
    const-string/jumbo v0, "SELECT aid, sum(c) AS s, max(c) AS m, avg(c) AS a FROM (SELECT account_id AS aid, contact_id AS cid, count(*) AS c FROM raw_contacts GROUP BY aid, cid) GROUP BY aid"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-result-object v1

    .line 537
    const/4 v0, -0x1

    :try_start_a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 538
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 539
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const-string/jumbo v0, "aid"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, " total # of raw contacts: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    const-string/jumbo v0, "s"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpStringColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 543
    const-string/jumbo v0, ", max # per contact: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v0, "m"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 545
    const-string/jumbo v0, ", avg # per contact: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    const-string/jumbo v0, "a"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpDoubleColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_6

    .line 549
    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    :goto_8
    if-eqz v1, :cond_9

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_9
    :goto_9
    if-eqz v2, :cond_d

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_a
    if-eqz v1, :cond_b

    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_b
    move-object v0, v2

    :goto_a
    if-eqz v0, :cond_e

    :try_start_f
    throw v0

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v1

    if-nez v2, :cond_c

    move-object v2, v1

    goto :goto_9

    :cond_c
    if-eq v2, v1, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_d
    throw v0

    .line 551
    :cond_e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 552
    const-string/jumbo v0, "  Data (per account):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 553
    :try_start_10
    const-string/jumbo v0, "SELECT aid, sum(c) AS s, max(c) AS m, avg(c) AS a FROM (SELECT aid, rid, count(*) AS c FROM (SELECT d._id AS did, d.raw_contact_id AS rid, r.account_id AS aid FROM data AS d JOIN raw_contacts AS r ON d.raw_contact_id=r._id) GROUP BY aid, rid) GROUP BY aid"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result-object v1

    .line 554
    const/4 v0, -0x1

    :try_start_11
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 555
    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 556
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v0, "aid"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v0, " total # of data:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    const-string/jumbo v0, "s"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v0, ", max # per raw contact: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    const-string/jumbo v0, "m"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpLongColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v0, ", avg # per raw contact: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v0, "a"

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dumpDoubleColumn(Ljava/io/PrintWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_b

    .line 566
    :catch_7
    move-exception v0

    move-object v2, v1

    :goto_c
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    :goto_d
    if-eqz v1, :cond_f

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :cond_f
    :goto_e
    if-eqz v2, :cond_13

    :try_start_14
    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    :cond_10
    if-eqz v1, :cond_11

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :cond_11
    :goto_f
    if-eqz v2, :cond_3

    :try_start_16
    throw v2

    :catch_8
    move-exception v2

    goto :goto_f

    :catch_9
    move-exception v1

    if-nez v2, :cond_12

    move-object v2, v1

    goto :goto_e

    :cond_12
    if-eq v2, v1, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_13
    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    .line 549
    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_7

    .line 514
    :catchall_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method protected finishOperation()V
    .locals 10

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationNest:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationNest:Ljava/lang/ThreadLocal;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 187
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationStartNs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 189
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationDurationMicroStats:Landroid/util/SparseLongArray;

    .line 190
    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationDurationMicroStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 189
    invoke-virtual {v0, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 193
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object v0
.end method

.method protected abstract getTransactionHolder()Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end method

.method protected final incrementStats(Landroid/util/SparseLongArray;)V
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 165
    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 167
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationNest:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationNest:Ljava/lang/ThreadLocal;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mOperationStartNs:Ljava/lang/ThreadLocal;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 173
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final incrementStats(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v0

    .line 179
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;)V

    .line 180
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 179
    goto :goto_1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 203
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 205
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 209
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 210
    return-object v1

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 211
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 214
    throw v0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract newDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end method

.method protected abstract notifyChange()V
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->newDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 141
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 157
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 159
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->incrementStats(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    .line 243
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 245
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 246
    if-lez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 249
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 250
    return v1

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 251
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->finishOperation()V

    .line 254
    throw v0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method
