.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageSize:J

.field private final mMessageUri:Landroid/net/Uri;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 77
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    .line 78
    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSubId:I

    .line 79
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method private getExpiryTime(Landroid/content/SharedPreferences;)J
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSubId:I

    if-nez v0, :cond_0

    .line 195
    const-string/jumbo v0, "pref_key_mms_validity_period_for_sim1"

    .line 196
    :goto_0
    const-string/jumbo v1, "0"

    .line 194
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 197
    return-wide v0

    .line 196
    :cond_0
    const-string/jumbo v0, "pref_key_mms_validity_period_for_sim2"

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSubId:I

    if-nez v0, :cond_2

    .line 202
    const-string/jumbo v0, "pref_key_mms_expiry_sim1"

    .line 203
    :goto_1
    const-string/jumbo v1, "0"

    .line 201
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 208
    :goto_2
    return-wide v0

    .line 203
    :cond_2
    const-string/jumbo v0, "pref_key_mms_expiry_sim2"

    goto :goto_1

    .line 206
    :cond_3
    const-string/jumbo v0, "pref_key_mms_expiry_no_multi"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .prologue
    # FEAT(receipts): never send MMS read reports
    return-void

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 217
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "pref_key_mms_send_read_report"

    .line 218
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    if-nez v0, :cond_0

    .line 226
    return-void

    .line 231
    :cond_0
    new-array v5, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 232
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v3

    .line 235
    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 236
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 238
    const/16 v3, 0x12

    move v4, p4

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/ReadRecInd;->setDate(J)V

    .line 244
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    .line 245
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    .line 244
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    .line 246
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 247
    const-string/jumbo v0, "sub_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Persist message failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Invalide header value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    const/16 v2, 0x81

    const/4 v9, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 150
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/MmsMessageSender;->getExpiryTime(Landroid/content/SharedPreferences;)J

    move-result-wide v4

    .line 152
    const-string/jumbo v0, "pref_key_mms_expiry"

    const-string/jumbo v6, "0"

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string/jumbo v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePreferencesHeaders expiryTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", expiryStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-wide/16 v6, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 161
    :cond_0
    const-string/jumbo v0, "pref_key_mms_priority"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 164
    iget v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v4

    .line 166
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    if-nez v4, :cond_1

    .line 168
    const-string/jumbo v0, "pref_key_mms_delivery_reports_card1"

    .line 167
    :goto_0
    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    # FEAT(receipts): never request MMS delivery reports (X-Mms-Delivery-Report: No)
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 178
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    if-nez v4, :cond_4

    .line 180
    const-string/jumbo v0, "pref_key_mms_read_reports_card1"

    .line 179
    :goto_3
    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 187
    :goto_4
    if-eqz v0, :cond_6

    :goto_5
    # FEAT(receipts): never request MMS read reports (X-Mms-Read-Report: No)
    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 188
    return-void

    .line 169
    :cond_1
    const-string/jumbo v0, "pref_key_mms_delivery_reports_card2"

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v0, "pref_key_mms_delivery_reports_ss"

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 175
    goto :goto_2

    .line 181
    :cond_4
    const-string/jumbo v0, "pref_key_mms_read_reports_card2"

    goto :goto_3

    .line 184
    :cond_5
    const-string/jumbo v0, "pref_key_mms_read_reports_ss"

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_6
    move v1, v2

    .line 187
    goto :goto_5
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMessage uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    .line 93
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 96
    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    .line 99
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 102
    const-string/jumbo v3, "personal"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 107
    iget-wide v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    .line 109
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 111
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 122
    const-string/jumbo v2, "proto_type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string/jumbo v2, "msg_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string/jumbo v2, "msg_type"

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string/jumbo v1, "err_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string/jumbo v1, "err_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string/jumbo v1, "retry_index"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string/jumbo v1, "due_time"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 131
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 130
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 137
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string/jumbo v1, "sub_id"

    iget v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    return v9

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0
.end method
