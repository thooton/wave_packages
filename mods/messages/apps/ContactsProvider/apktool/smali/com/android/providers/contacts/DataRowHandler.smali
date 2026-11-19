.class public abstract Lcom/android/providers/contacts/DataRowHandler;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;,
        Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;
    }
.end annotation


# static fields
.field private static final HASH_INPUT_COLUMNS:[Ljava/lang/String;


# instance fields
.field protected final mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

.field protected final mContext:Landroid/content/Context;

.field protected final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected final mMimetype:Ljava/lang/String;

.field protected mMimetypeId:J

.field protected mSelectionArgs1:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/android/providers/contacts/DataRowHandler;->HASH_INPUT_COLUMNS:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 90
    iput-object p3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    .line 91
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 14

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v12

    .line 340
    const-wide/16 v10, -0x1

    .line 341
    const/4 v8, -0x1

    .line 342
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 343
    const-string/jumbo v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    .line 344
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "raw_contact_id=? AND mimetype_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 343
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move v0, v8

    move-wide v4, v10

    .line 349
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 351
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 352
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I

    move-result v7

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ge v7, v8, :cond_0

    :cond_1
    move v0, v1

    move-wide v4, v2

    .line 354
    goto :goto_0

    .line 358
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v2, p2

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 363
    :cond_3
    return-void

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    throw v0
.end method

.method private handleHashIdForUpdate(Landroid/content/ContentValues;J)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 224
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 224
    if-eqz v0, :cond_1

    .line 226
    :cond_0
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 229
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "data"

    .line 230
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler;->HASH_INPUT_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    .line 229
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 232
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v9

    .line 234
    :goto_0
    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v8

    .line 237
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 240
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->generateHashId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const-string/jumbo v0, "hash_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 247
    :cond_1
    :goto_2
    return-void

    .line 233
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 234
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    throw v0

    .line 244
    :cond_4
    const-string/jumbo v1, "hash_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v8

    move-object v1, v9

    goto :goto_1
.end method

.method private handlePrimaryAndSuperPrimary(Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;JJZ)V
    .locals 17

    .prologue
    .line 255
    const-string/jumbo v4, "is_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 256
    :goto_0
    const-string/jumbo v5, "is_super_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v6, v5

    .line 259
    :goto_1
    if-nez v4, :cond_2

    xor-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_2

    return-void

    .line 255
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 256
    :cond_1
    const/4 v5, 0x0

    move v6, v5

    goto :goto_1

    .line 261
    :cond_2
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->markRawContactMetadataDirty(JZ)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v14

    .line 266
    if-eqz v4, :cond_8

    .line 267
    const-string/jumbo v5, "is_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move v12, v5

    .line 268
    :goto_2
    if-eqz v6, :cond_a

    .line 269
    const-string/jumbo v5, "is_super_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    .line 271
    :goto_3
    if-nez v12, :cond_3

    if-eqz v5, :cond_d

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 274
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v4, "is_primary"

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const-string/jumbo v4, "is_super_primary"

    const/4 v5, 0x1

    aput-object v4, v6, v5

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "data"

    .line 276
    const-string/jumbo v7, "_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 275
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 278
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 279
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    move v5, v4

    .line 280
    :goto_4
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 282
    :goto_5
    if-eqz v4, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v14, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    .line 285
    :cond_4
    if-eqz v12, :cond_5

    if-eqz v5, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-wide/16 v8, -0x1

    move-wide/from16 v6, p5

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_6
    :goto_6
    const-string/jumbo v4, "is_super_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v4, "is_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 316
    return-void

    .line 267
    :cond_7
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_2

    .line 266
    :cond_8
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_2

    .line 269
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 268
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 279
    :cond_b
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    .line 280
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 289
    :catchall_0
    move-exception v4

    .line 290
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 289
    throw v4

    .line 294
    :cond_d
    if-eqz v4, :cond_f

    .line 295
    const-string/jumbo v4, "is_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    move v5, v4

    .line 296
    :goto_7
    if-eqz v6, :cond_11

    .line 297
    const-string/jumbo v4, "is_super_primary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 298
    :goto_8
    if-eqz v4, :cond_12

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p5

    move-wide/from16 v8, p3

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p5

    move-wide/from16 v8, p3

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    goto :goto_6

    .line 295
    :cond_e
    const/4 v4, 0x0

    move v5, v4

    goto :goto_7

    .line 294
    :cond_f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_7

    .line 297
    :cond_10
    const/4 v4, 0x0

    goto :goto_8

    .line 296
    :cond_11
    const/4 v4, 0x0

    goto :goto_8

    .line 302
    :cond_12
    if-eqz v5, :cond_6

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v14, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p5

    move-wide/from16 v8, p3

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 309
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p5

    move-wide/from16 v8, p3

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    goto/16 :goto_6
.end method

.method private isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 429
    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 430
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    return v1

    .line 429
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 441
    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 442
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    return v1
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 320
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 321
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 322
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 323
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 325
    const-string/jumbo v3, "presence"

    const-string/jumbo v6, "presence_raw_contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/DataRowHandler;->fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 328
    invoke-virtual {p2, v4, v5, v1}, Lcom/android/providers/contacts/TransactionContext;->markRawContactMetadataDirty(JZ)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 335
    :cond_1
    return v2

    :cond_2
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method protected fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;->isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 377
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 379
    :cond_0
    return-void
.end method

.method public getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 393
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 394
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 395
    const-string/jumbo v1, "data"

    const-string/jumbo v3, "_id=?"

    .line 396
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 395
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 398
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    .line 399
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 400
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    if-nez v0, :cond_0

    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 404
    if-nez v1, :cond_1

    move-object v1, v2

    .line 405
    :goto_1
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 407
    :cond_0
    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v8

    .line 411
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 413
    if-nez v0, :cond_4

    .line 414
    return-object v2

    .line 410
    :catchall_0
    move-exception v0

    .line 411
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 410
    throw v0

    .line 417
    :cond_4
    invoke-virtual {v9, p4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 418
    return-object v9
.end method

.method protected getMimeTypeId()J
    .locals 4

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    .line 106
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    return-wide v0
.end method

.method protected getTypeRank(I)I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public handleHashIdForInsert(Landroid/content/ContentValues;)V
    .locals 5

    .prologue
    .line 198
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPhotoHashId()Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const-string/jumbo v0, "hash_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 215
    :goto_1
    return-void

    .line 205
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->generateHashId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_3
    const-string/jumbo v1, "hash_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 116
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/DataRowHandler;->handleHashIdForInsert(Landroid/content/ContentValues;)V

    .line 117
    const-string/jumbo v2, "data"

    move-object/from16 v0, p5

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 119
    const-string/jumbo v2, "is_primary"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    const-string/jumbo v3, "is_super_primary"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 121
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v8

    .line 123
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 124
    move-wide/from16 v0, p3

    invoke-virtual {p2, v0, v1, v11}, Lcom/android/providers/contacts/TransactionContext;->markRawContactMetadataDirty(JZ)V

    .line 128
    if-eqz v10, :cond_4

    .line 129
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 143
    :cond_0
    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual/range {p2 .. p4}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 147
    :cond_1
    return-wide v6

    .line 121
    :cond_2
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    goto :goto_1
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 423
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 9

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 160
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v8, p6

    .line 162
    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/DataRowHandler;->handlePrimaryAndSuperPrimary(Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;JJZ)V

    .line 164
    invoke-direct {p0, p3, v4, v5}, Lcom/android/providers/contacts/DataRowHandler;->handleHashIdForUpdate(Landroid/content/ContentValues;J)V

    .line 166
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v0, "data"

    const-string/jumbo v1, "_id =?"

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2, v6, v7}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 175
    :cond_1
    invoke-virtual {p2, v6, v7, p5}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirtyAndChanged(JZ)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
