.class public Lcom/android/providers/contacts/aggregation/ContactAggregator;
.super Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;
    }
.end annotation


# instance fields
.field private final mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V

    .line 62
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .line 73
    return-void
.end method

.method private canJoinIntoContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/Set;Ljava/util/Set;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 318
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string/jumbo v1, ","

    invoke-static {v1, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->buildIdentityMatchingSql(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    .line 326
    invoke-virtual {p0, v0, v1, v5, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->buildIdentityMatchingSql(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 328
    sget-boolean v2, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 329
    const-string/jumbo v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canJoinIntoContact: no duplicates, but has no matching identity and has mis-matching identity on the same namespace between rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    const-string/jumbo v3, " and ridsInOtherAccts="

    .line 329
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    return v5

    .line 335
    :cond_1
    sget-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_2

    .line 336
    const-string/jumbo v0, "ContactAggregator"

    const-string/jumbo v1, "canJoinIntoContact: can join the first raw contact from the same account without any identity mismatch."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    return v4

    .line 342
    :cond_3
    sget-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_4

    .line 343
    const-string/jumbo v0, "ContactAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "canJoinIntoContact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    const-string/jumbo v2, " duplicate(s) found"

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 349
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 351
    invoke-direct {p0, p1, v0, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isDataMaching(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    .line 350
    if-eqz v0, :cond_6

    .line 352
    sget-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 353
    const-string/jumbo v0, "ContactAggregator"

    const-string/jumbo v1, "canJoinIntoContact: join if there is a data matching found in the same account"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_5
    return v4

    .line 358
    :cond_6
    sget-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_7

    .line 359
    const-string/jumbo v0, "ContactAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "canJoinIntoContact: re-aggregate rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    const-string/jumbo v2, " with its best matching contact to connected component"

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private clearSuperPrimarySetting(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 249
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string/jumbo v3, " AND mimetype_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v3, "SELECT DISTINCT(a.mimetype_id) FROM (SELECT mimetype_id FROM data WHERE is_super_primary =1 AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id=?1)) AS a JOIN  (SELECT mimetype_id FROM data WHERE is_super_primary =1 AND raw_contact_id=?2) AS b ON a.mimetype_id=b.mimetype_id"

    .line 257
    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 269
    const/4 v4, -0x1

    :try_start_0
    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 270
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    if-lez v0, :cond_0

    .line 272
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 281
    if-nez v0, :cond_2

    .line 282
    return-void

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 277
    throw v0

    .line 287
    :cond_2
    const-string/jumbo v0, "UPDATE data SET is_super_primary=0 WHERE (raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id=?1) OR raw_contact_id=?2)"

    .line 294
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method private isDataMaching(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 372
    const-string/jumbo v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string/jumbo v1, ","

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p0, v0, v1, v5, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->buildIdentityMatchingSql(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    sget-boolean v2, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 379
    const-string/jumbo v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canJoinIntoContact: identity match found between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string/jumbo v3, " and "

    .line 379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    return v5

    .line 387
    :cond_1
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->buildEmailMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p0, p1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    sget-boolean v2, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_2

    .line 389
    const-string/jumbo v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canJoinIntoContact: email match found between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    const-string/jumbo v3, " and "

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    return v5

    .line 397
    :cond_3
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->buildPhoneMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {p0, p1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 398
    sget-boolean v2, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_4

    .line 399
    const-string/jumbo v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canJoinIntoContact: phone match found between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v3, " and "

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4
    return v5

    .line 404
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 824
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move v7, v8

    .line 825
    :goto_0
    iget v0, p2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-ge v7, v0, :cond_1

    .line 826
    iget-object v0, p2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    .line 827
    iget-object v1, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 828
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 832
    const-string/jumbo v1, "*\') AND "

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 833
    const-string/jumbo v1, "("

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 833
    const-string/jumbo v1, "name_type"

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 833
    const-string/jumbo v1, " IN("

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 834
    const-string/jumbo v1, ","

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 835
    const/4 v1, 0x4

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 835
    const-string/jumbo v1, ","

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    const/4 v1, 0x3

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    const-string/jumbo v1, ")) AND "

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 837
    const-string/jumbo v1, "contact_id"

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 837
    const-string/jumbo v1, " IN "

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 837
    const-string/jumbo v1, "default_directory"

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 838
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V

    .line 825
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 844
    :cond_1
    return-void
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 866
    const-string/jumbo v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 867
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    .line 866
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 870
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 872
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 873
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 878
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget v0, p3, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-ge v9, v0, :cond_0

    .line 879
    iget-object v0, p3, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    .line 880
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v1, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 885
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 887
    return-void

    .line 884
    :catchall_0
    move-exception v0

    .line 885
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 884
    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x2

    const-wide/16 v4, -0x1

    .line 617
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v0

    .line 618
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 620
    return-wide v4

    .line 621
    :cond_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 623
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v0

    .line 624
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 625
    return-wide v4

    .line 629
    :cond_1
    return-wide v0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 552
    iget-boolean v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIdsValid:Z

    if-nez v2, :cond_0

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Landroid/util/ArraySet;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    return-wide v10

    .line 562
    :cond_1
    const-string/jumbo v3, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    .line 563
    sget-object v4, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_contact_id1="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    const-string/jumbo v5, " OR "

    .line 564
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    const-string/jumbo v5, "raw_contact_id2"

    .line 564
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    const-string/jumbo v5, "="

    .line 564
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    .line 562
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 569
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 570
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 571
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 573
    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 574
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 575
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 574
    if-eqz v2, :cond_8

    .line 576
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 584
    :goto_1
    cmp-long v6, v2, v10

    if-eqz v6, :cond_2

    .line 585
    if-ne v5, v12, :cond_6

    .line 586
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v2

    .line 593
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 592
    throw v2

    :cond_3
    move-wide v2, v10

    .line 575
    goto :goto_1

    .line 579
    :cond_4
    const/4 v2, 0x3

    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 580
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 579
    if-eqz v2, :cond_8

    .line 581
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_1

    :cond_5
    move-wide v2, v10

    .line 580
    goto :goto_1

    .line 588
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 596
    const/16 v2, 0x64

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v12}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v2

    return-wide v2

    :cond_8
    move-wide v2, v10

    goto :goto_1
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 641
    const/16 v0, 0x46

    .line 640
    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 642
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 643
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Z)V

    .line 648
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 649
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v7

    .line 650
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 651
    if-eqz v0, :cond_2

    .line 652
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V

    .line 664
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v7}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private reAggregateRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLjava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/TransactionContext;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 423
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-virtual {p0, p2, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->findConnectedRawContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 427
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 429
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 430
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 429
    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 456
    :cond_0
    return-void

    .line 432
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 433
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 437
    const-wide/16 v6, 0x0

    cmp-long v3, p5, v6

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 436
    :goto_0
    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 438
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 446
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 447
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 448
    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 449
    const/4 v5, 0x0

    invoke-virtual {p0, p2, p1, v2, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 450
    add-int/lit8 v2, v3, -0x1

    :goto_2
    move v3, v2

    goto :goto_1

    .line 437
    :cond_4
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 452
    :cond_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, p2, p1, v2, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    move v2, v3

    goto :goto_2
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 518
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 519
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 520
    return-void
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 673
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 674
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 675
    const/16 v0, 0x46

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 676
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 677
    return-wide v0

    .line 680
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 683
    return-wide v4
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 787
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 788
    const-string/jumbo v1, "data dataA JOIN data dataB ON dataA.data1= dataB.data1 JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 789
    const-string/jumbo v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND aggregation_needed=0 AND contact_id IN default_directory"

    .line 790
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 788
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 792
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 794
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithEmailMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    .line 797
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 796
    throw v0

    .line 797
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 799
    return-void
.end method

.method private updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 716
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdIdentity:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 717
    const-string/jumbo v1, "data dataA JOIN data dataB ON (dataA.data2=dataB.data2 AND dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 718
    const-string/jumbo v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data2 NOT NULL AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND aggregation_needed=0 AND contact_id IN default_directory"

    .line 719
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    move-object v0, p1

    move-object v7, v6

    .line 717
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 721
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 723
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v0

    .line 726
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 725
    throw v0

    .line 726
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 729
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x3

    const/4 v4, 0x0

    .line 762
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 763
    const-string/jumbo v3, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 764
    const-string/jumbo v5, "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    .line 765
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v10, Lcom/android/providers/contacts/aggregation/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v2, p1

    move-object v8, v7

    move-object v9, v7

    .line 763
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 767
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 769
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 770
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 771
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 773
    const/4 v10, 0x0

    move-object/from16 v3, p4

    move-object v9, v7

    .line 772
    invoke-virtual/range {v3 .. v10}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 774
    if-ne v6, v12, :cond_0

    .line 775
    if-ne v8, v12, :cond_0

    .line 776
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v2

    .line 780
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 779
    throw v2

    .line 780
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 782
    return-void
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 803
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 804
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 805
    const-string/jumbo v1, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 806
    const-string/jumbo v3, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0 AND contact_id IN default_directory"

    .line 807
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 805
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 809
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 811
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithPhoneNumberMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 813
    :catchall_0
    move-exception v0

    .line 814
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 813
    throw v0

    .line 814
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 816
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 6

    .prologue
    .line 929
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 930
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 931
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 932
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 933
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Z)V

    .line 934
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 935
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 940
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;

    .line 941
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    goto :goto_0

    .line 947
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V
    .locals 17

    .prologue
    monitor-enter p0

    .line 83
    :try_start_0
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_0

    .line 84
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aggregateContact: rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v5, 0x0

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 90
    if-eqz v4, :cond_17

    .line 91
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    .line 94
    :goto_0
    const-wide/16 v4, -0x1

    .line 95
    const/4 v10, 0x0

    .line 97
    new-instance v9, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    .line 98
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 99
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 100
    if-nez v11, :cond_c

    .line 101
    invoke-virtual/range {p9 .. p9}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->clear()V

    .line 102
    invoke-virtual {v9}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v4

    .line 105
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_14

    .line 109
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-eqz v6, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p2

    move-wide/from16 v1, p7

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v6

    .line 109
    if-eqz v6, :cond_16

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p9

    .line 111
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v12

    .line 116
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    if-eqz v4, :cond_2

    cmp-long v4, v12, p7

    if-eqz v4, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 126
    const-string/jumbo v4, "SELECT _id, account_id FROM raw_contacts WHERE contact_id=? AND _id!=?"

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 132
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 133
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 134
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 135
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 136
    cmp-long v4, v8, p5

    if-nez v4, :cond_7

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 142
    :catchall_0
    move-exception v4

    .line 143
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 142
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    move v6, v10

    move-wide v8, v12

    .line 171
    :goto_3
    const-wide/16 v4, 0x0

    .line 173
    const-wide/16 v12, 0x0

    cmp-long v7, p7, v12

    if-eqz v7, :cond_3

    .line 174
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 181
    :cond_3
    const-wide/16 v12, -0x1

    cmp-long v7, v8, v12

    if-nez v7, :cond_5

    .line 182
    const-wide/16 v12, 0x0

    cmp-long v7, p7, v12

    if-eqz v7, :cond_5

    .line 183
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-eqz v7, :cond_4

    .line 184
    const/4 v7, 0x2

    if-ne v11, v7, :cond_5

    :cond_4
    move-wide/from16 v8, p7

    .line 188
    :cond_5
    cmp-long v7, v8, p7

    if-nez v7, :cond_d

    .line 190
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markAggregated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 191
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_6

    .line 192
    const-string/jumbo v4, "ContactAggregator"

    const-string/jumbo v5, "Aggregation unchanged"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_4
    monitor-exit p0

    .line 242
    return-void

    .line 139
    :cond_7
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 143
    :cond_8
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 146
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v4

    .line 147
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v5

    .line 146
    add-int/2addr v4, v5

    .line 148
    const/16 v5, 0x32

    if-lt v4, v5, :cond_a

    .line 149
    sget-boolean v5, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v5, :cond_9

    .line 150
    const-string/jumbo v5, "ContactAggregator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Too many raw contacts ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    const-string/jumbo v6, ") in the best matching contact, so skip aggregation"

    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_9
    const/4 v4, 0x0

    .line 158
    :goto_5
    if-nez v4, :cond_b

    .line 159
    const-wide/16 v8, -0x1

    move v6, v10

    goto/16 :goto_3

    :cond_a
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object v8, v15

    move-object/from16 v9, v16

    .line 155
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->canJoinIntoContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/Set;Ljava/util/Set;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    goto :goto_5

    .line 160
    :cond_b
    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 161
    const/4 v4, 0x1

    move v6, v4

    move-wide v8, v12

    goto/16 :goto_3

    .line 165
    :cond_c
    const/4 v6, 0x3

    if-ne v11, v6, :cond_14

    monitor-exit p0

    .line 166
    return-void

    .line 194
    :cond_d
    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_f

    .line 196
    const/4 v6, 0x1

    :try_start_6
    new-array v6, v6, [Ljava/lang/Long;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 197
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 200
    :cond_e
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_6

    .line 201
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create new contact for rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 203
    :cond_f
    if-eqz v6, :cond_11

    .line 205
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 206
    invoke-interface {v14, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 207
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-eqz v6, :cond_10

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    move-wide/from16 v10, p7

    :goto_6
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v12, p3

    .line 212
    invoke-direct/range {v5 .. v14}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->reAggregateRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLjava/util/Set;)V

    .line 214
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_6

    .line 215
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-aggregating rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 211
    :cond_10
    const-wide/16 v10, 0x0

    goto :goto_6

    .line 219
    :cond_11
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 221
    move-object/from16 v0, p2

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/database/ContactsTableUtil;->deleteContact(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_12
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v10, p3

    .line 227
    invoke-direct/range {v6 .. v11}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->clearSuperPrimarySetting(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 228
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v9, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 235
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_13

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 238
    :cond_13
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_6

    .line 239
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Join rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    :cond_14
    move v6, v10

    move-wide v8, v4

    goto/16 :goto_3

    :cond_15
    move v6, v10

    move-wide v8, v12

    goto/16 :goto_3

    :cond_16
    move-wide v12, v4

    goto/16 :goto_1

    :cond_17
    move v11, v5

    goto/16 :goto_0
.end method

.method protected findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 897
    new-instance v8, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-direct {v8}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;-><init>()V

    .line 898
    new-instance v9, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    .line 901
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepOut(J)V

    .line 903
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 904
    :cond_0
    const-string/jumbo v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 904
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 907
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 909
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    .line 913
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 912
    throw v0

    .line 913
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 920
    :goto_1
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 916
    :cond_2
    invoke-direct {p0, p1, v8, v9, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public updateAggregationAfterVisibilityChange(J)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 477
    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 511
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 483
    const-string/jumbo v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 484
    const-string/jumbo v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    .line 483
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 486
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 488
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 490
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 491
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 493
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    const/16 v3, 0x46

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    .line 494
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 495
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 507
    throw v0

    .line 498
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 499
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 500
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 502
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    .line 503
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 504
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 508
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
