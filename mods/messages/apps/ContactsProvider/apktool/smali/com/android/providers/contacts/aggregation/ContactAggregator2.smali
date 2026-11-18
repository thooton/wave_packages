.class public Lcom/android/providers/contacts/aggregation/ContactAggregator2;
.super Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.source "ContactAggregator2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$EmailLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$IdentityLookupMatchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$NullNameRawContactsIdsQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator2$PhoneLookupQuery;
    }
.end annotation


# instance fields
.field private final mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V

    .line 74
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    .line 85
    return-void
.end method

.method private breakComponentsByExceptions(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 427
    const-string/jumbo v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 433
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 432
    invoke-direct {p0, v2, v2, v3, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->buildExceptionMatchingSql(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v3

    .line 435
    invoke-virtual {p0, v2, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->buildExceptionMatchingSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V

    .line 436
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    invoke-static {v0, v3}, Lcom/android/providers/contacts/aggregation/util/ContactAggregatorHelper;->findConnectedComponents(Ljava/util/Set;Lcom/google/common/collect/Multimap;)Ljava/util/Set;

    move-result-object v0

    .line 437
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method

.method private buildExceptionMatchingSql(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    const-string/jumbo v0, "SELECT raw_contact_id1, raw_contact_id2"

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM agg_exceptions WHERE raw_contact_id1 IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string/jumbo v1, ")"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, " AND "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "raw_contact_id2"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, " IN ("

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, ")"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, " AND "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "type"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "="

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT count(*) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT raw_contact_id1, raw_contact_id2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private canBeReused(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 401
    const-string/jumbo v0, "SELECT raw_contacts._id FROM raw_contacts WHERE contact_id=? AND deleted=0"

    .line 404
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 405
    const-string/jumbo v0, "SELECT raw_contacts._id FROM raw_contacts WHERE contact_id=? AND deleted=0"

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 407
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 408
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    return v4

    .line 414
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 416
    const/4 v0, 0x1

    return v0

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    throw v0
.end method

.method private clearSuperPrimarySetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT mimetype_id, count(1) c  FROM data WHERE is_super_primary = 1 AND raw_contact_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    const-string/jumbo v2, ") group by "

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, "mimetype_id"

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, " HAVING c > 1"

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const-string/jumbo v3, " AND mimetype_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    if-lez v0, :cond_0

    .line 264
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 273
    if-nez v0, :cond_2

    .line 274
    return-void

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 269
    throw v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE data SET is_super_primary=0 WHERE raw_contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v1, ")"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private findRawContactMatchingCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;
    .locals 10

    .prologue
    .line 212
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScores(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 213
    new-instance v6, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;

    .line 214
    invoke-virtual {p5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->pickBestMatches()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-direct {v6, v0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;-><init>(Ljava/util/List;)V

    .line 215
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 216
    invoke-virtual {v6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getRawContactIdSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    :goto_0
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    invoke-virtual {v6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 220
    return-object v6

    .line 222
    :cond_0
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 223
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 224
    new-instance v5, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;-><init>()V

    .line 225
    new-instance v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-direct {v4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScores(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 227
    invoke-virtual {v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->pickBestMatches()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 229
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v2

    .line 230
    invoke-virtual {v6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getRawContactIdSet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->add(Lcom/android/providers/contacts/aggregation/util/MatchScore;)V

    goto :goto_1

    .line 236
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 237
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 239
    :cond_4
    return-object v6
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 694
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move v7, v8

    .line 695
    :goto_0
    iget v0, p2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-ge v7, v0, :cond_1

    .line 696
    iget-object v0, p2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    .line 697
    iget-object v1, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 698
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 702
    const-string/jumbo v1, "*\') AND "

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    const-string/jumbo v1, "("

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    const-string/jumbo v1, "name_type"

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    const-string/jumbo v1, " IN("

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 704
    const-string/jumbo v1, ","

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 705
    const/4 v1, 0x4

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 705
    const-string/jumbo v1, ","

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    const/4 v1, 0x3

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    const-string/jumbo v1, ")) AND "

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 707
    const-string/jumbo v1, "contact_id"

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 707
    const-string/jumbo v1, " IN "

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 707
    const-string/jumbo v1, "default_directory"

    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 708
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;ILjava/lang/String;)V

    .line 695
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 714
    :cond_1
    return-void
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;ILjava/lang/String;)V
    .locals 20

    .prologue
    .line 740
    const-string/jumbo v3, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 741
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v10, p6

    .line 740
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 744
    :cond_0
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 746
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 747
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 748
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 749
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 754
    const/4 v2, 0x0

    move v15, v2

    :goto_0
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mCount:I

    if-ge v15, v2, :cond_0

    .line 755
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;

    .line 756
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v10, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mLookupType:I

    .line 757
    iget-object v11, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v3, p4

    move/from16 v14, p5

    .line 756
    invoke-virtual/range {v3 .. v14}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->matchName(JJJILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_0

    .line 761
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 763
    return-void

    .line 760
    :catchall_0
    move-exception v2

    .line 761
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 760
    throw v2
.end method

.method private needAggregate(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    const-string/jumbo v1, "SELECT _id FROM raw_contacts WHERE aggregation_needed=1 AND _id=?"

    .line 196
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 197
    const-string/jumbo v1, "SELECT _id FROM raw_contacts WHERE aggregation_needed=1 AND _id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 202
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 200
    return v0

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    throw v0
.end method

.method private rawContactWithoutName(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 887
    const-string/jumbo v1, "raw_contacts LEFT OUTER JOIN name_lookup ON _id = raw_contact_id AND name_type = 0"

    .line 888
    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$NullNameRawContactsIdsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 887
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 891
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 892
    return v0

    .line 895
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 897
    const/4 v0, 0x0

    return v0

    .line 894
    :catchall_0
    move-exception v0

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    throw v0
.end method

.method private reAggregateRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJJLcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;)V
    .locals 13

    .prologue
    .line 318
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 319
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getRawContactIdSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    invoke-virtual {p0, p2, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->findConnectedRawContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 323
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getRawContactToAccount()Ljava/util/Map;

    move-result-object v3

    .line 324
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactAggregatorHelper;->mergeComponentsWithDisjointAccounts(Ljava/util/Set;Ljava/util/Map;)V

    .line 327
    invoke-direct {p0, p2, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->breakComponentsByExceptions(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V

    .line 332
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 333
    const/4 v4, 0x0

    .line 334
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 335
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 339
    const-wide/16 v10, 0x0

    cmp-long v3, p3, v10

    if-eqz v3, :cond_3

    .line 340
    const-wide/16 v10, 0x0

    cmp-long v3, p9, v10

    if-nez v3, :cond_3

    .line 342
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 343
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 344
    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getContactId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    .line 345
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 346
    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_3
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p2, v3, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->canBeReused(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/util/Set;)Z

    move-result v3

    .line 339
    if-nez v3, :cond_1

    .line 349
    const-wide/16 v10, 0x0

    cmp-long v3, p3, v10

    if-eqz v3, :cond_4

    .line 350
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    :goto_1
    const-string/jumbo v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-direct {p0, p2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->clearSuperPrimarySetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, p2, p1, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 369
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_5

    .line 370
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Aggregating rids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_5
    invoke-virtual {p0, p2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markAggregated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 374
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 375
    const-wide/16 v4, 0x0

    .line 376
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_6

    .line 377
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 378
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const-wide/16 v8, 0x0

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 379
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 382
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_9

    .line 384
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lcom/android/providers/contacts/database/ContactsTableUtil;->deleteContact(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 385
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 386
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_2

    .line 353
    :cond_7
    const/4 v3, 0x0

    .line 354
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v4

    move v4, v3

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 355
    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getContactId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    .line 356
    if-nez v4, :cond_8

    if-eqz v6, :cond_8

    .line 357
    invoke-direct {p0, p2, v6, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->canBeReused(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/util/Set;)Z

    move-result v3

    .line 356
    if-eqz v3, :cond_8

    .line 359
    const/4 v3, 0x1

    move-object v4, v6

    :goto_4
    move-object v5, v4

    move v4, v3

    goto :goto_3

    .line 361
    :cond_8
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v4, v5

    goto :goto_4

    .line 388
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto/16 :goto_2

    .line 392
    :cond_a
    return-void

    :cond_b
    move-object v4, v5

    goto/16 :goto_1
.end method

.method private updateMatchScores(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 4

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 859
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 861
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->rawContactWithoutName(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 863
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 864
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 865
    invoke-virtual {p5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->prepareSecondaryMatchCandidates()Ljava/util/List;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_0

    .line 867
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    .line 868
    invoke-direct {p0, p1, v0, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateScoreForCandidatesWithoutName(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 871
    :cond_0
    return-void
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 612
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMimeTypeIdEmail:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 613
    const-string/jumbo v1, "data dataA JOIN data dataB ON dataA.data1= dataB.data1 JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 614
    const-string/jumbo v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND contact_id IN default_directory"

    .line 615
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 613
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 617
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 619
    cmp-long v0, v2, p2

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 623
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, p4

    .line 624
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateScoreWithEmailMatch(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    .line 627
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 626
    throw v0

    .line 627
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 629
    return-void
.end method

.method private updateMatchScoresBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 12

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mAggregationExceptionIdsValid:Z

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mAggregationExceptionIds:Landroid/util/ArraySet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    return-void

    .line 513
    :cond_1
    const-string/jumbo v1, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    .line 514
    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "raw_contact_id1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    const-string/jumbo v3, " OR "

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    const-string/jumbo v3, "raw_contact_id2"

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    const-string/jumbo v3, "="

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 513
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 520
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 521
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 522
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 523
    const-wide/16 v4, -0x1

    .line 524
    const-wide/16 v2, -0x1

    .line 525
    const-wide/16 v6, -0x1

    .line 526
    cmp-long v1, p2, v10

    if-nez v1, :cond_4

    .line 527
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 528
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 529
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 530
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 539
    :cond_3
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v1, v2, v10

    if-eqz v1, :cond_2

    .line 540
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move-object/from16 v1, p4

    .line 541
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->keepIn(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    .line 548
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 547
    throw v0

    .line 533
    :cond_4
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 534
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 535
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 536
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    :cond_5
    move-object/from16 v1, p4

    .line 543
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->keepOut(JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 548
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 550
    return-void
.end method

.method private updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 558
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMimeTypeIdIdentity:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 559
    const-string/jumbo v1, "data dataA JOIN data dataB ON (dataA.data2=dataB.data2 AND dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 560
    const-string/jumbo v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data2 NOT NULL AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND contact_id IN default_directory"

    .line 561
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    move-object v0, p1

    move-object v7, v6

    .line 559
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 563
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 565
    cmp-long v0, v2, p2

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 569
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, p4

    .line 570
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->matchIdentity(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 572
    throw v0

    .line 573
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 575
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 14

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 583
    const-string/jumbo v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    .line 584
    const-string/jumbo v3, "nameA.raw_contact_id=? AND contact_id IN default_directory"

    .line 585
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 583
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 587
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 589
    cmp-long v0, v2, p2

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 593
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 594
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 595
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 596
    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 598
    const/4 v12, 0x0

    move-object/from16 v1, p4

    move-object v11, v9

    .line 597
    invoke-virtual/range {v1 .. v12}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->matchName(JJJILjava/lang/String;ILjava/lang/String;I)V

    .line 599
    const/4 v0, 0x3

    if-ne v8, v0, :cond_0

    .line 600
    const/4 v0, 0x3

    if-ne v10, v0, :cond_0

    move-object/from16 v1, p4

    .line 601
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateScoreWithNicknameMatch(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    .line 605
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 604
    throw v0

    .line 605
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 607
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 17

    .prologue
    .line 636
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->clear()V

    .line 637
    new-instance v3, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v2, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V

    .line 639
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 640
    invoke-virtual {v3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    const-string/jumbo v5, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    .line 645
    sget-object v6, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v7

    .line 646
    sget-object v12, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 645
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 646
    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 644
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 648
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 650
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 651
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 652
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 653
    invoke-virtual {v3, v13}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->getLookupType(Ljava/lang/String;)I

    move-result v12

    .line 654
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 656
    const/16 v16, 0x0

    move-object/from16 v5, p4

    move-object v15, v13

    .line 655
    invoke-virtual/range {v5 .. v16}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->matchName(JJJILjava/lang/String;ILjava/lang/String;I)V

    .line 657
    const/4 v2, 0x3

    if-ne v12, v2, :cond_1

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1

    move-object/from16 v5, p4

    .line 658
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateScoreWithNicknameMatch(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v2

    .line 662
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 661
    throw v2

    .line 662
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 664
    return-void
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 668
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 669
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 670
    const-string/jumbo v1, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 671
    const-string/jumbo v3, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND contact_id IN default_directory"

    .line 672
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 670
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 674
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 676
    cmp-long v0, v2, p2

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 680
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, p4

    .line 681
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateScoreWithPhoneNumberMatch(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    .line 684
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 683
    throw v0

    .line 684
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 686
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 6

    .prologue
    .line 844
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 845
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 846
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 847
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 848
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Z)V

    .line 849
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 850
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;",
            "Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
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

    .line 877
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    goto :goto_0

    .line 883
    :cond_1
    return-void
.end method

.method private updateScoreForCandidatesWithoutName(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 906
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 908
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 910
    if-eqz v0, :cond_0

    .line 911
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string/jumbo v1, "raw_contacts LEFT OUTER JOIN name_lookup ON _id = raw_contact_id AND name_type = 0"

    .line 917
    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator2$NullNameRawContactsIdsQuery;->COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 916
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 920
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 922
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 923
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 924
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 925
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 926
    invoke-virtual {p3, v0, v2, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->matchNoName(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 929
    :catchall_0
    move-exception v0

    .line 930
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 929
    throw v0

    .line 930
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 932
    return-void
.end method


# virtual methods
.method declared-synchronized aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V
    .locals 17

    .prologue
    monitor-enter p0

    .line 95
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->needAggregate(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_0

    .line 97
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skip rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " which has already been aggregated."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 99
    return-void

    .line 102
    :cond_1
    :try_start_1
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_2

    .line 103
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

    .line 106
    :cond_2
    const/4 v5, 0x0

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 109
    if-eqz v4, :cond_12

    .line 110
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v10, v4

    .line 113
    :goto_0
    new-instance v9, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;-><init>()V

    .line 114
    new-instance v16, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;

    invoke-direct/range {v16 .. v16}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;-><init>()V

    .line 115
    if-nez v10, :cond_8

    .line 118
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p2

    move-wide/from16 v1, p7

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 118
    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p9

    .line 121
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->findRawContactMatchingCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;

    move-result-object v16

    .line 130
    :cond_4
    const-wide/16 v14, 0x0

    .line 132
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v14

    .line 142
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getCount()I

    move-result v5

    .line 143
    const/16 v4, 0x32

    if-lt v5, v4, :cond_9

    .line 144
    const/4 v4, 0x0

    .line 145
    sget-boolean v6, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v6, :cond_6

    .line 146
    const-string/jumbo v6, "ContactAggregator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Too many matching raw contacts ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    const-string/jumbo v7, ") are found, so skip aggregation"

    .line 146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_6
    :goto_1
    if-nez v4, :cond_d

    .line 166
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_7

    .line 167
    const-string/jumbo v4, "ContactAggregator"

    const-string/jumbo v5, "Aggregation unchanged"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_7
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markAggregated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    .line 189
    return-void

    .line 124
    :cond_8
    const/4 v4, 0x3

    if-ne v10, v4, :cond_4

    monitor-exit p0

    .line 125
    return-void

    .line 149
    :cond_9
    if-lez v5, :cond_a

    .line 150
    const/4 v4, -0x1

    goto :goto_1

    .line 155
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_c

    .line 156
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_b

    .line 157
    const/4 v4, 0x2

    if-ne v10, v4, :cond_c

    .line 158
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 160
    :cond_c
    const/4 v4, 0x1

    goto :goto_1

    .line 170
    :cond_d
    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 172
    :try_start_2
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_e

    .line 173
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

    .line 175
    :cond_e
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V

    .line 176
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_f

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 179
    :cond_f
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markAggregated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 182
    :cond_10
    :try_start_3
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_11

    .line 183
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-aggregating rids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 184
    const-string/jumbo v6, ","

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;->getRawContactIdSet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p7

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 186
    invoke-direct/range {v5 .. v16}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->reAggregateRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJJLcom/android/providers/contacts/aggregation/util/RawContactMatchingCandidates;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :cond_12
    move v10, v5

    goto/16 :goto_0
.end method

.method protected findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 14
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
    const/4 v6, 0x0

    .line 810
    new-instance v10, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-direct {v10}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;-><init>()V

    .line 811
    new-instance v11, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {v11}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;-><init>()V

    .line 813
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 814
    :cond_0
    const-string/jumbo v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact_id="

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

    .line 814
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 817
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 819
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v3, v11

    move-wide/from16 v6, p2

    .line 821
    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->keepOut(JJJ)V

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v11

    .line 822
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v2

    .line 826
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 825
    throw v2

    .line 826
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 833
    :goto_1
    const/16 v2, 0x32

    invoke-virtual {v11, v2}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 829
    :cond_2
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v10, v11, v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public updateAggregationAfterVisibilityChange(J)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 496
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 468
    const-string/jumbo v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 469
    const-string/jumbo v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    .line 468
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 471
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 473
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->clear()V

    .line 475
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 476
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 478
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    const/16 v3, 0x46

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    .line 479
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 480
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 492
    :catchall_0
    move-exception v0

    .line 493
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 492
    throw v0

    .line 483
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->clear()V

    .line 484
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 485
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/RawContactMatcher;)V

    .line 487
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->mMatcher:Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    .line 488
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 489
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator2;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 493
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
