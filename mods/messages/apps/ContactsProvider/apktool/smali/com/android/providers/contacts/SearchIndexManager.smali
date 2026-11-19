.class public Lcom/android/providers/contacts/SearchIndexManager;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;,
        Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$ScopedNameNormalizingBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;
    }
.end annotation


# static fields
.field private static final FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "ContactsFTS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    .line 416
    const-string/jumbo v0, "[^\u0080-\uffff\\p{Alnum}_]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 415
    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    .line 241
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .line 242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSelectionArgs1:[Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 247
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 248
    return-void
.end method

.method private buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 343
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(CASE WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " THEN -4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " THEN -3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " THEN -2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " THEN -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ELSE mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " END), is_super_primary, data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string/jumbo v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id)"

    sget-object v2, Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;->COLUMNS:[Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    .line 360
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0, v6}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->setCursor(Landroid/database/Cursor;)V

    .line 363
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    move-wide v4, v8

    move v0, v10

    .line 366
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 368
    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 369
    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/android/providers/contacts/SearchIndexManager;->insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    move-wide v11, v2

    move v2, v0

    move-wide v0, v11

    .line 376
    :goto_1
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v4, v3}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/DataRowHandler;->appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 380
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->commit()V

    :cond_1
    move-wide v4, v0

    move v0, v2

    goto :goto_0

    .line 383
    :cond_2
    cmp-long v1, v4, v8

    if-eqz v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/android/providers/contacts/SearchIndexManager;->insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    add-int/lit8 v0, v0, 0x1

    .line 388
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    return v0

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    throw v0

    :cond_4
    move v2, v0

    move-wide v0, v4

    goto :goto_1
.end method

.method public static getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    invoke-static {p0}, Lcom/android/providers/contacts/SearchIndexManager;->splitIntoFtsTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    invoke-virtual {p1, v1, v0}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->addToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSearchIndexVersion()I
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "search_index"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "content"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "name"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "tokens"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getTokens()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string/jumbo v0, "search_index"

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 400
    return-void
.end method

.method private rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager;->buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1, v8}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 284
    const-string/jumbo v1, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v2, " contacts"

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1, v8}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 284
    const-string/jumbo v1, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v3, " contacts"

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    throw v0
.end method

.method private setSearchIndexVersion(I)V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "search_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method static splitIntoFtsTokens(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 424
    sget-object v0, Lcom/android/providers/contacts/SearchIndexManager;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 425
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 426
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    return-object v1
.end method


# virtual methods
.method public updateIndex(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    if-eqz p1, :cond_2

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager;->setSearchIndexVersion(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 264
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager;->setSearchIndexVersion(I)V

    .line 266
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    return-void

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 255
    return-void

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    throw v0
.end method

.method public updateIndexForRawContacts(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v0, "ContactsFTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating search index for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    const-string/jumbo v2, " contacts / "

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    const-string/jumbo v2, " raw contacts"

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const-string/jumbo v1, "contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    const-string/jumbo v1, "contact_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_3
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 325
    const-string/jumbo v2, "search_index"

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_id IN (SELECT contact_id FROM raw_contacts WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    const-string/jumbo v4, ")"

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    const/4 v4, 0x0

    .line 325
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/SearchIndexManager;->buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 336
    sget-boolean v1, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_4

    .line 337
    const-string/jumbo v1, "ContactsFTS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated search index for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " contacts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    return-void
.end method
