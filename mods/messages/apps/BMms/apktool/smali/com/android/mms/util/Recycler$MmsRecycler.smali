.class public Lcom/android/mms/util/Recycler$MmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecycler"
.end annotation


# static fields
.field private static final ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    new-array v0, v3, [Ljava/lang/String;

    .line 317
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v2

    .line 316
    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 323
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 324
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    .line 325
    const-string/jumbo v1, "date"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 322
    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 315
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 344
    const-string/jumbo v0, "MaxMmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    .line 315
    return-void
.end method

.method private deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND locked=0 AND (msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    const-string/jumbo v1, " AND date<"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 475
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    const/4 v3, 0x0

    .line 474
    invoke-static {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v7

    .line 495
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->getAllThreads(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8

    .line 496
    if-nez v8, :cond_1

    .line 497
    return v9

    .line 518
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p0, v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND locked=0 AND (msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 506
    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 508
    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p1

    .line 504
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 510
    if-nez v0, :cond_2

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 511
    return v9

    .line 514
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lt v1, v7, :cond_0

    .line 518
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    const/4 v0, 0x1

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 515
    return v0

    .line 517
    :catchall_0
    move-exception v1

    .line 518
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 517
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    :catchall_1
    move-exception v0

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 521
    throw v0

    .line 522
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 524
    return v9
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 431
    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND locked=0 AND (msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 441
    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 443
    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p1

    .line 439
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 444
    if-nez v1, :cond_2

    .line 445
    :try_start_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "MMS: deleteMessagesForThread got back null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 463
    if-eqz v1, :cond_1

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_1
    return-void

    .line 449
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 450
    sub-int/2addr v0, p4

    .line 456
    if-gtz v0, :cond_4

    .line 463
    if-eqz v1, :cond_3

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    return-void

    .line 460
    :cond_4
    :try_start_3
    invoke-interface {v1, p4}, Landroid/database/Cursor;->move(I)Z

    .line 461
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    .line 463
    if-eqz v1, :cond_5

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 467
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    .line 468
    return-void

    .line 462
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 463
    :goto_0
    if-eqz v1, :cond_6

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 381
    invoke-static {p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    return-void

    .line 388
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread_id in (select thread_id from pdu where _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string/jumbo v2, ")"

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string/jumbo v2, " AND locked=0 AND (msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 394
    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 396
    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p1

    .line 392
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 397
    if-nez v1, :cond_2

    .line 398
    :try_start_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "MMS: deleteOldMessagesInSameThreadAsMessage got back null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    if-eqz v1, :cond_1

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_1
    return-void

    .line 402
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 404
    sub-int/2addr v0, v2

    .line 410
    if-gtz v0, :cond_4

    .line 418
    if-eqz v1, :cond_3

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_3
    return-void

    .line 414
    :cond_4
    :try_start_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->move(I)Z

    .line 415
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 416
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 418
    if-eqz v1, :cond_5

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_5
    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    .line 423
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    .line 425
    :cond_6
    return-void

    .line 417
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 418
    :goto_0
    if-eqz v1, :cond_7

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected getAllThreads(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 366
    const-string/jumbo v2, "threads"

    .line 365
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 367
    const-string/jumbo v2, "filter_count"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 371
    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 373
    const-string/jumbo v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    .line 369
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 347
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 348
    const-string/jumbo v1, "MaxMmsMessagesPerThread"

    .line 349
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMMSMessagesPerThread()I

    move-result v2

    .line 348
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 354
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "MaxMmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    return-void
.end method
