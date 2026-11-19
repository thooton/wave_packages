.class public Lcom/android/providers/contacts/CallLogDatabaseHelper;
.super Ljava/lang/Object;
.source "CallLogDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/providers/contacts/CallLogDatabaseHelper;

.field private static sInstanceForShadow:Lcom/android/providers/contacts/CallLogDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOpenHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->migrateFromLegacyTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mContext:Landroid/content/Context;

    .line 219
    new-instance v0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;-><init>(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mOpenHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;

    .line 220
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;
    .locals 3

    .prologue
    const-class v1, Lcom/android/providers/contacts/CallLogDatabaseHelper;

    monitor-enter v1

    .line 223
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstance:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;

    const-string/jumbo v2, "calllog.db"

    invoke-direct {v0, p0, v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstance:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 226
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstance:Lcom/android/providers/contacts/CallLogDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstanceForShadow(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;
    .locals 4

    .prologue
    const-class v1, Lcom/android/providers/contacts/CallLogDatabaseHelper;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstanceForShadow:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "calllog_shadow.db"

    .line 232
    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/CallLogDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstanceForShadow:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 235
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->sInstanceForShadow:Lcom/android/providers/contacts/CallLogDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private migrateFromLegacyTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getContactsWritableDatabaseForMigration()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 303
    if-nez v3, :cond_0

    .line 304
    const-string/jumbo v0, "CallLogDatabaseHelper"

    const-string/jumbo v1, "Contacts DB == null, skipping migration. (running tests?)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 311
    :cond_0
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "migrated"

    const-string/jumbo v4, ""

    invoke-static {p1, v1, v4}, Lcom/android/providers/contacts/util/PropertyUtils;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    return-void

    .line 315
    :cond_1
    const-string/jumbo v0, "CallLogDatabaseHelper"

    const-string/jumbo v1, "Migrating from old tables..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 319
    :try_start_0
    const-string/jumbo v0, "calls"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string/jumbo v0, "voicemail_status"

    invoke-static {v3, v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 319
    if-eqz v0, :cond_3

    .line 322
    :cond_2
    const-string/jumbo v0, "CallLogDatabaseHelper"

    const-string/jumbo v1, "Source tables don\'t exist."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 372
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 323
    return-void

    .line 325
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 328
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :try_start_3
    const-string/jumbo v0, "SELECT * FROM calls"

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-result-object v1

    .line 332
    :goto_0
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 335
    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 337
    const-string/jumbo v0, "calls"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    :goto_3
    if-eqz v2, :cond_8

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 363
    :catchall_1
    move-exception v0

    .line 364
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    throw v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 368
    :catch_1
    move-exception v0

    .line 370
    :try_start_9
    const-string/jumbo v1, "CallLogDatabaseHelper"

    const-string/jumbo v2, "Exception caught during migration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 372
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 374
    :goto_4
    const-string/jumbo v0, "migrated"

    const-string/jumbo v1, "1"

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 339
    :cond_5
    if-eqz v1, :cond_6

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_6
    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_9

    :try_start_b
    throw v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_3

    :cond_7
    if-eq v2, v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 341
    :cond_9
    :try_start_c
    const-string/jumbo v0, "SELECT * FROM voicemail_status"

    .line 342
    const/4 v1, 0x0

    .line 341
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result-object v1

    .line 343
    :goto_6
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 344
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 346
    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 348
    const-string/jumbo v0, "voicemail_status"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_6

    .line 350
    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_7
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_8
    if-eqz v1, :cond_a

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_a
    :goto_9
    if-eqz v2, :cond_e

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_b
    if-eqz v1, :cond_c

    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :goto_a
    if-eqz v2, :cond_f

    :try_start_12
    throw v2

    :catch_5
    move-exception v2

    goto :goto_a

    :catch_6
    move-exception v1

    if-nez v2, :cond_d

    move-object v2, v1

    goto :goto_9

    :cond_d
    if-eq v2, v1, :cond_a

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    throw v0

    .line 352
    :cond_f
    const-string/jumbo v0, "DROP TABLE calls;"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "DROP TABLE voicemail_status;"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "call_log_last_synced"

    .line 358
    const-string/jumbo v1, "call_log_last_synced"

    const/4 v2, 0x0

    .line 357
    invoke-static {v3, v1, v2}, Lcom/android/providers/contacts/util/PropertyUtils;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "CallLogDatabaseHelper"

    const-string/jumbo v1, "Migration completed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 364
    :try_start_13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 367
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 372
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4

    .line 371
    :catchall_3
    move-exception v0

    .line 372
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    throw v0

    .line 350
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    .line 339
    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    const-string/jumbo v2, "select count(*) from sqlite_master where type=\'table\' and name=?"

    .line 381
    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 379
    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 381
    const-wide/16 v4, 0x0

    .line 379
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "ALTER TABLE calls ADD via_number TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 266
    const-string/jumbo v0, "ALTER TABLE voicemail_status ADD source_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "ALTER TABLE calls ADD backed_up INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "ALTER TABLE calls ADD restored INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "ALTER TABLE calls ADD archived INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "ALTER TABLE calls ADD is_omtp_voicemail INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 285
    const-string/jumbo v0, "ALTER TABLE calls ADD transcription_state INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "ALTER TABLE calls ADD cnap_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    return-void
.end method


# virtual methods
.method closeForTest()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mOpenHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->close()V

    .line 417
    return-void
.end method

.method getContactsWritableDatabaseForMigration()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/providers/contacts/util/PropertyUtils;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mOpenHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper;->mOpenHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public selectDistinctColumn(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 392
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT DISTINCT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    const-string/jumbo v3, " FROM "

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    const/4 v3, 0x0

    .line 393
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 397
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 398
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 409
    throw v0

    .line 410
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 408
    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
