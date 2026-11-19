.class public Lcom/android/providers/contacts/ContactMetadataProvider;
.super Landroid/content/ContentProvider;
.source "ContactMetadataProvider.java"


# static fields
.field private static final VERBOSE_LOGGING:Z

.field private static final sMetadataProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSyncStateProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAllowedPackage:Ljava/lang/String;

.field private mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 59
    const-string/jumbo v0, "ContactMetadata"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactMetadataProvider;->VERBOSE_LOGGING:Z

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 67
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts.metadata"

    const-string/jumbo v2, "metadata_sync"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts.metadata"

    const-string/jumbo v2, "metadata_sync/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts.metadata"

    const-string/jumbo v2, "metadata_sync_state"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    invoke-static {}, Lcom/android/common/content/ProjectionMap;->builder()Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "_id"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "raw_contact_backup_id"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "account_type"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "account_name"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "data_set"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "data"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "deleted"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sMetadataProjectionMap:Ljava/util/Map;

    .line 82
    invoke-static {}, Lcom/android/common/content/ProjectionMap;->builder()Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "_id"

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "account_type"

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "account_name"

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "data_set"

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "state"

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sSyncStateProjectionMap:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private replaceAccountInfoByAccountId(Landroid/net/Uri;Landroid/content/ContentValues;)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 407
    const-string/jumbo v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "account_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    const-string/jumbo v2, "data_set"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    .line 411
    if-eqz v3, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 414
    const-string/jumbo v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    .line 413
    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/AccountWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAccountIdOrNull(Lcom/android/providers/contacts/AccountWithDataSet;)Ljava/lang/Long;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 422
    return-object v5

    .line 425
    :cond_1
    const-string/jumbo v1, "account_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    const-string/jumbo v1, "account_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v1, "account_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v1, "data_set"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 432
    return-object v0
.end method

.method private setTablesAndProjectionMapForMetadata(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "view_metadata_sync"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sMetadataProjectionMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 332
    return-void
.end method

.method private setTablesAndProjectionMapForSyncState(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1

    .prologue
    .line 335
    const-string/jumbo v0, "view_metadata_sync_state"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sSyncStateProjectionMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 338
    return-void
.end method

.method private updateOrInsertDataToMetadataSync(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 346
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 347
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 349
    const-string/jumbo v2, "Calling contact metadata insert or update on an unknown/invalid URI"

    .line 348
    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    const-string/jumbo v0, "deleted"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot insert or update deleted metadata:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    const-string/jumbo v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 363
    const-string/jumbo v2, "Data column cannot be empty."

    .line 362
    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactMetadataProvider;->replaceAccountInfoByAccountId(Landroid/net/Uri;Landroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object v1

    .line 369
    const-string/jumbo v2, "raw_contact_backup_id"

    .line 368
    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 375
    if-nez v1, :cond_3

    .line 377
    return-wide v6

    .line 379
    :cond_3
    if-nez v2, :cond_4

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid identifier is found: accountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v4, "rawContactBackupId="

    .line 381
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v3, v1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_4
    iget-object v4, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v2, v1, v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upsertMetadataSync(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)J

    move-result-wide v2

    .line 388
    cmp-long v1, v2, v6

    if-gtz v1, :cond_5

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Metadata upsertion failed. Values= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_5
    invoke-static {v0}, Lcom/android/providers/contacts/MetadataEntryParser;->parseDataToMetaDataEntry(Ljava/lang/String;)Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateFromMetaDataEntry(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;)V

    .line 399
    return-wide v2
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
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
    .line 293
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 295
    sget-boolean v0, Lcom/android/providers/contacts/ContactMetadataProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "ContactMetadata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyBatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ops"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 301
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 302
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 303
    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 314
    sget-boolean v0, Lcom/android/providers/contacts/ContactMetadataProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 315
    const-string/jumbo v0, "ContactMetadata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bulkInsert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " inserts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 320
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 321
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 322
    return v0

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 323
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 214
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 217
    :try_start_0
    sget-object v1, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 219
    packed-switch v1, :pswitch_data_0

    .line 249
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 250
    const-string/jumbo v3, "Calling contact metadata delete on an unknown/invalid URI"

    .line 249
    invoke-virtual {v2, v3, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catchall_0
    move-exception v1

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    throw v1

    .line 221
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "view_metadata_sync"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 222
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    .line 221
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 224
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 226
    const-string/jumbo v1, "metadata_sync"

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 226
    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    add-int/2addr v8, v1

    goto :goto_0

    .line 230
    :cond_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 233
    return v8

    .line 229
    :catchall_1
    move-exception v1

    .line 230
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    throw v1

    .line 235
    :pswitch_2
    const-string/jumbo v1, "view_metadata_sync_state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 236
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    .line 235
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move v1, v8

    .line 238
    :goto_1
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 240
    const-string/jumbo v3, "metadata_sync_state"

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 240
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 244
    :cond_1
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    return v1

    .line 243
    :catchall_2
    move-exception v1

    .line 244
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 243
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method ensureCaller()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mAllowedPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " can\'t access ContactMetadataProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 110
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/contact_metadata"

    return-object v0

    .line 167
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/contact_metadata"

    return-object v0

    .line 169
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/contact_metadata_sync_state"

    return-object v0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 183
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 186
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 187
    packed-switch v0, :pswitch_data_0

    .line 201
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 202
    const-string/jumbo v3, "Calling contact metadata insert on an unknown/invalid URI"

    .line 201
    invoke-virtual {v2, v3, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    throw v0

    .line 191
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/contacts/ContactMetadataProvider;->updateOrInsertDataToMetadataSync(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 193
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 205
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    return-object v0

    .line 195
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMetadataProvider;->replaceAccountInfoByAccountId(Landroid/net/Uri;Landroid/content/ContentValues;)Ljava/lang/Long;

    .line 197
    const-string/jumbo v0, "metadata_sync_state"

    const-string/jumbo v2, "account_id"

    .line 196
    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 198
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 205
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    return-object v0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactMetadataProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "com.android.contacts"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 103
    check-cast v0, Lcom/android/providers/contacts/ContactsProvider2;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 105
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mAllowedPackage:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 124
    sget-boolean v0, Lcom/android/providers/contacts/ContactMetadataProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "ContactMetadata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "  selection=["

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "]  args="

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "  order=["

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "] CPID="

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string/jumbo v2, " User="

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 133
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 136
    packed-switch v1, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactMetadataProvider;->setTablesAndProjectionMapForMetadata(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 156
    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactMetadataProvider;->setTablesAndProjectionMapForMetadata(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 143
    const-string/jumbo v1, "_id"

    .line 144
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 143
    invoke-static {v1, v6, v7}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactMetadataProvider;->setTablesAndProjectionMapForSyncState(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setDatabaseHelper(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 116
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMetadataProvider;->ensureCaller()V

    .line 262
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 265
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactMetadataProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 266
    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 282
    const-string/jumbo v3, "Calling contact metadata update on an unknown/invalid URI"

    .line 281
    invoke-virtual {v2, v3, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    throw v0

    .line 270
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMetadataProvider;->replaceAccountInfoByAccountId(Landroid/net/Uri;Landroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object v0

    .line 271
    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactMetadataProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 273
    const-string/jumbo v3, "Invalid identifier is found for accountId"

    .line 272
    invoke-virtual {v2, v3, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    const-string/jumbo v2, "account_id"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const-string/jumbo v0, "metadata_sync_state"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 278
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v0, 0x1

    .line 285
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 279
    return v0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
