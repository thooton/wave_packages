.class public Lcom/android/mms/util/Recycler$SmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRecycler"
.end annotation


# static fields
.field private static final ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "msg_count"

    aput-object v1, v0, v3

    .line 142
    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    .line 153
    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    .line 154
    const-string/jumbo v1, "body"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "date"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 150
    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 172
    const-string/jumbo v0, "MaxSmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$SmsRecycler;->MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v7

    .line 284
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->getAllThreads(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8

    .line 285
    if-nez v8, :cond_1

    .line 286
    return v9

    .line 305
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {p0, v8}, Lcom/android/mms/util/Recycler$SmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 295
    const-string/jumbo v4, "locked=0"

    .line 296
    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p1

    .line 292
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 297
    if-nez v0, :cond_2

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 298
    return v9

    .line 301
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lt v1, v7, :cond_0

    .line 305
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 302
    const/4 v0, 0x1

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    return v0

    .line 304
    :catchall_0
    move-exception v1

    .line 305
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 308
    throw v0

    .line 309
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 311
    return v9
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 14

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 207
    const/4 v9, 0x0

    .line 210
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 211
    sget-object v5, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 212
    const-string/jumbo v6, "locked=0"

    .line 213
    const-string/jumbo v8, "date DESC"

    const/4 v7, 0x0

    move-object v2, p1

    .line 209
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v10

    .line 214
    if-nez v10, :cond_1

    .line 215
    :try_start_1
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "SMS: deleteMessagesForThread got back null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v10, :cond_0

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    return-void

    .line 218
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 219
    sub-int v2, v2, p4

    .line 225
    if-gtz v2, :cond_3

    .line 262
    if-eqz v10, :cond_2

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_2
    return-void

    .line 229
    :cond_3
    :try_start_3
    move/from16 v0, p4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->move(I)Z

    .line 230
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 231
    const/4 v9, 0x0

    .line 232
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    :try_start_4
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 237
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 238
    const-string/jumbo v2, "_id"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "locked=0 AND date<"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "date DESC"

    const/4 v7, 0x0

    move-object v2, p1

    .line 235
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 240
    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    .line 242
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_4

    .line 243
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->deleteMessage(J)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_4
    if-eqz v4, :cond_5

    .line 250
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_5
    :goto_1
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    const/4 v5, 0x0

    .line 254
    invoke-static {p1, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    if-eqz v10, :cond_6

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_6
    return-void

    .line 246
    :catch_0
    move-exception v2

    move-object v4, v9

    .line 247
    :goto_2
    :try_start_7
    const-string/jumbo v5, "Rcs: deleteRcsMessageAttachment exception"

    invoke-static {v5, v2}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 249
    if-eqz v4, :cond_5

    .line 250
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v2

    move-object v3, v10

    .line 262
    :goto_3
    if-eqz v3, :cond_7

    .line 263
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_7
    throw v2

    .line 248
    :catchall_1
    move-exception v2

    .line 249
    :goto_4
    if-eqz v9, :cond_8

    .line 250
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_8
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 261
    :catchall_2
    move-exception v2

    move-object v3, v9

    goto :goto_3

    .line 248
    :catchall_3
    move-exception v2

    move-object v9, v4

    goto :goto_4

    .line 246
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method protected getAllThreads(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    .line 195
    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg_count >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p1

    .line 193
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 175
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "MaxSmsMessagesPerThread"

    .line 177
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultSMSMessagesPerThread()I

    move-result v2

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 182
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "MaxSmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    return-void
.end method
