.class public Lcom/android/mms/transaction/MessageStatusService;
.super Landroid/app/IntentService;
.source "MessageStatusService.java"


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/transaction/MessageStatusService;->ID_PROJECTION:[Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "content://sms/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageStatusService;->STATUS_URI:Landroid/net/Uri;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/mms/transaction/MessageStatusService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MessageStatusService;->setIntentRedelivery(Z)V

    .line 51
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MessageStatusReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-static {p3, p4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 82
    if-nez v7, :cond_0

    .line 83
    return-object v4

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    sget-object v3, Lcom/android/mms/transaction/MessageStatusService;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    .line 87
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 94
    sget-object v1, Lcom/android/mms/transaction/MessageStatusService;->STATUS_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 95
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v0

    .line 96
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    .line 97
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMessageStatus: msgUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    const-string/jumbo v5, ", isStatusReport="

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string/jumbo v0, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 104
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    return-object v7

    .line 107
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Can\'t find message for status update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessageStatusService;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x2

    .line 55
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "MessageStatusService: is not the default sms app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "pdu"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 63
    const-string/jumbo v2, "format"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-direct {p0, p0, v0, v1, v2}, Lcom/android/mms/transaction/MessageStatusService;->updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 69
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZLandroid/net/Uri;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v4, v5, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_0
.end method
