.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private static getMmsCursor(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 315
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-object p0

    .line 318
    :cond_0
    return-object v6

    .line 321
    :cond_1
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    const-string/jumbo v0, "msg_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 326
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 327
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 329
    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 330
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Find out the MMS in pendingMessage table."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Can\'t not find the MMS in pendingMessage table."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v6

    .line 327
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 341
    :cond_5
    return-object p0
.end method

.method private static getResponseStatus(Landroid/content/Context;J)I
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 244
    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    .line 243
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 246
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string/jumbo v0, "resp_st"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 250
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 252
    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return v0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 249
    throw v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private static getRetrieveStatus(Landroid/content/Context;J)I
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 262
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    .line 261
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 264
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string/jumbo v0, "resp_st"

    .line 265
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 269
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 271
    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Retrieve status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return v0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    throw v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public static scheduleRetry(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 18

    .prologue
    .line 101
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 103
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 104
    const-string/jumbo v3, "protocol"

    const-string/jumbo v4, "mms"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    const-string/jumbo v3, "message"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 108
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 107
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 110
    if-eqz v12, :cond_4

    .line 112
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const-string/jumbo v2, "msg_type"

    .line 113
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 117
    const-string/jumbo v2, "retry_index"

    .line 116
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 120
    const/4 v2, 0x1

    .line 122
    new-instance v6, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 124
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 127
    const/16 v4, 0x82

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    move v5, v3

    .line 128
    :goto_0
    const/4 v3, 0x1

    .line 129
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(Landroid/content/Context;J)I

    move-result v7

    .line 130
    const/4 v4, 0x0

    .line 131
    if-nez v5, :cond_6

    .line 133
    sparse-switch v7, :sswitch_data_0

    .line 149
    :goto_1
    if-eqz v4, :cond_0

    .line 150
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 151
    const/4 v3, 0x0

    .line 172
    :cond_0
    :goto_2
    invoke-virtual {v6}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v4

    if-ge v13, v4, :cond_8

    if-eqz v3, :cond_8

    .line 173
    invoke-virtual {v6}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v6

    add-long v6, v6, v16

    .line 175
    const-string/jumbo v3, "Mms"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleRetry: retry for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " is scheduled at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 176
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    const-string/jumbo v8, "ms from now"

    .line 176
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    const-string/jumbo v3, "due_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    if-eqz v5, :cond_2

    .line 184
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    .line 185
    const/16 v4, 0x82

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 222
    :cond_2
    :goto_3
    const-string/jumbo v3, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string/jumbo v2, "retry_index"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string/jumbo v2, "last_try"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string/jumbo v2, "_id"

    .line 226
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 228
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 230
    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v5, v14

    .line 229
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_4
    return-void

    .line 127
    :cond_5
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_0

    .line 135
    :sswitch_0
    const v4, 0x7f070185

    .line 136
    goto/16 :goto_1

    .line 139
    :sswitch_1
    const v4, 0x7f070186

    .line 140
    goto/16 :goto_1

    .line 142
    :sswitch_2
    const v4, 0x7f070188

    .line 143
    goto/16 :goto_1

    .line 146
    :sswitch_3
    const v4, 0x7f070187

    .line 147
    goto/16 :goto_1

    .line 156
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/android/mms/transaction/RetryScheduler;->getRetrieveStatus(Landroid/content/Context;J)I

    move-result v4

    .line 158
    const/16 v7, 0xe4

    .line 157
    if-ne v4, v7, :cond_7

    .line 159
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 160
    const v3, 0x7f070187

    .line 159
    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 164
    return-void

    .line 167
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 168
    const v7, 0x7f09000f

    .line 167
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 169
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 188
    :cond_8
    const/16 v9, 0xa

    .line 189
    if-eqz v5, :cond_c

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 192
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const-string/jumbo v2, "thread_id"

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 190
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 194
    const-wide/16 v2, -0x1

    .line 195
    if-eqz v4, :cond_a

    .line 197
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 198
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 201
    :cond_9
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_a
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    .line 207
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 210
    :cond_b
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 211
    const/16 v3, 0x87

    .line 210
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    move v2, v9

    goto/16 :goto_3

    .line 200
    :catchall_0
    move-exception v2

    .line 201
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 200
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    :catchall_1
    move-exception v2

    .line 236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 235
    throw v2

    .line 214
    :cond_c
    :try_start_5
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 215
    const-string/jumbo v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 217
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 216
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v2, v9

    goto/16 :goto_3

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xe1 -> :sswitch_1
        0xe4 -> :sswitch_3
    .end sparse-switch
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;Landroid/net/Uri;)V

    .line 281
    return-void
.end method

.method public static setRetryAlarm(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    .prologue
    .line 284
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 285
    const-wide v2, 0x7fffffffffffffffL

    .line 284
    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_1

    .line 288
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/mms/transaction/RetryScheduler;->getMmsCursor(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v2, "due_time"

    .line 291
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.ACTION_ONALARM"

    .line 295
    const-class v5, Lcom/android/mms/transaction/TransactionService;

    const/4 v6, 0x0

    .line 294
    invoke-direct {v0, v4, v6, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 296
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 299
    const-string/jumbo v0, "alarm"

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 300
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 302
    const-string/jumbo v0, "Mms"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string/jumbo v0, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Next retry is scheduled at"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 303
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string/jumbo v3, "ms from now"

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_1
    return-void

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 307
    throw v0
.end method


# virtual methods
.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 72
    :try_start_0
    const-string/jumbo v1, "Mms"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RetryScheduler] update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    instance-of v1, v0, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v1, :cond_1

    .line 79
    instance-of v1, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    .line 78
    if-nez v1, :cond_1

    .line 80
    instance-of v1, v0, Lcom/android/mms/transaction/ReadRecTransaction;

    .line 78
    if-nez v1, :cond_1

    .line 81
    instance-of v1, v0, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    if-eqz v1, :cond_3

    .line 83
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 85
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;Landroid/net/Uri;)V

    .line 96
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "set retry alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 90
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;Landroid/net/Uri;)V

    .line 96
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "set retry alarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    throw v0
.end method
