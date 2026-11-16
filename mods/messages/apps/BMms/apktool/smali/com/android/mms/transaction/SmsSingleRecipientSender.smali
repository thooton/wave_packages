.class public Lcom/android/mms/transaction/SmsSingleRecipientSender;
.super Lcom/android/mms/transaction/SmsMessageSender;
.source "SmsSingleRecipientSender.java"


# instance fields
.field private isExpectMore:Z

.field private mDest:Ljava/lang/String;

.field private mPriority:I

.field private final mRequestDeliveryReport:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;IZ)V
    .locals 10

    .prologue
    .line 43
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 44
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 45
    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 47
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->isExpectMore:Z

    .line 48
    return-void
.end method

.method private getValidityPeriod(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 234
    packed-switch v2, :pswitch_data_0

    .line 263
    :goto_0
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 236
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string/jumbo v2, "pref_key_sms_validity_period_for_sim1"

    .line 237
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_0
    const-string/jumbo v2, "pref_key_sms_validity_period_sim1"

    .line 242
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const-string/jumbo v2, "pref_key_sms_validity_period_for_sim2"

    .line 248
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v2, "pref_key_sms_validity_period_sim2"

    .line 253
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    const-string/jumbo v2, "pref_key_sms_validity_period_no_multi"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendEmptyMessage()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3, v9}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmsMessageSender.sendEmptyMessage couldn\'t move message to outbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 65
    new-instance v2, Landroid/content/Intent;

    .line 66
    const-string/jumbo v3, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    .line 67
    iget-object v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 68
    iget-object v5, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 69
    const-class v6, Lcom/android/mms/transaction/MessageStatusReceiver;

    .line 65
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-static {v0, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 75
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.mms.transaction.MESSAGE_SENT"

    .line 76
    iget-object v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v5, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 78
    const-class v6, Lcom/android/mms/transaction/SmsReceiver;

    .line 75
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string/jumbo v3, "subscription"

    iget v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string/jumbo v3, "SendNextMsg"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendEmptyMessage sendIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 86
    iget v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getValidityPeriod(I)I

    .line 88
    iget v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isCDMAInternationalRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "sendEmptyMessage during CDMA international roaming."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput v8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    move-object v7, v1

    .line 95
    :goto_1
    :try_start_0
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextForSubscriberWithSelfPermissions:mDest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "mRequestDeliveryReport="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    const-string/jumbo v2, "mServiceCenter="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mServiceCenter:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, "mThreadId="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    iget-wide v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mThreadId:J

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "|mUri="

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 106
    iget v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    .line 107
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mServiceCenter:Ljava/lang/String;

    const-string/jumbo v5, ""

    const/4 v8, 0x1

    .line 106
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    :goto_2
    return v9

    :cond_2
    move-object v0, v1

    .line 72
    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "iccISms.sendTextForSubscriberWithSelfPermissions: caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmsMessageSender.sendEmptyMessage: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v2, " from iccISms.sendTextForSubscriberWithSelfPermissions()"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v7, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Null message body or have multiple destinations."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    .line 128
    if-eqz v1, :cond_2

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 143
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 145
    if-nez v6, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageText:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "\""

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 139
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mThreadId:J

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1, v4, v5, v2}, Lcom/android/mms/data/Conversation;->verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/MessageUtils;->checkIdp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendEmptyMessage()Z

    move-result v0

    return v0

    .line 155
    :cond_4
    # FEAT(rcs): RCS chat instead of SMS when the peer has RCS (falls back to SMS on failure)
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageText:Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-static {p0, v1, v2, v4, v5}, Lcom/android/mms/transaction/ArgonRcsSend;->interceptSms(Lcom/android/mms/transaction/SmsSingleRecipientSender;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :argon_sms

    const/4 v1, 0x0

    return v1

    :argon_sms
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v1

    .line 156
    if-nez v1, :cond_5

    .line 157
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmsMessageSender.sendMessage: couldn\'t move message to outbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_8

    .line 164
    iget-boolean v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v1, :cond_7

    add-int/lit8 v1, v6, -0x1

    if-ne v2, v1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 170
    new-instance v7, Landroid/content/Intent;

    .line 171
    const-string/jumbo v8, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    .line 172
    iget-object v9, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 173
    iget-object v10, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 174
    const-class v11, Lcom/android/mms/transaction/MessageStatusReceiver;

    .line 170
    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const/4 v8, 0x0

    .line 175
    const/4 v9, 0x0

    .line 168
    invoke-static {v1, v8, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_2
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mms.transaction.MESSAGE_SENT"

    .line 180
    iget-object v8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 181
    iget-object v9, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    .line 182
    const-class v10, Lcom/android/mms/transaction/SmsReceiver;

    .line 179
    invoke-direct {v7, v1, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string/jumbo v1, "subscription"

    iget v8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x0

    .line 185
    add-int/lit8 v8, v6, -0x1

    if-ne v2, v8, :cond_6

    .line 189
    const/4 v1, 0x1

    .line 190
    const-string/jumbo v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendMessage sendIntent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 193
    iget-object v8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v1, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 177
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_8
    iget v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getValidityPeriod(I)I

    move-result v8

    .line 198
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 199
    iget v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isCDMAInternationalRoaming(I)Z

    move-result v1

    .line 198
    if-eqz v1, :cond_9

    .line 200
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "sendMessage during CDMA international roaming."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v8, -0x1

    .line 206
    :cond_9
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessage:mDest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "|mServiceCenter="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mServiceCenter:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string/jumbo v2, "|messages="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    if-eqz v3, :cond_a

    const-string/jumbo v1, ">"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    const-string/jumbo v2, "|mPriority="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    iget v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "|isExpectMore="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->isExpectMore:Z

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string/jumbo v2, "|validityPeriod="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string/jumbo v2, "|threadId="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    iget-wide v10, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mThreadId:J

    .line 206
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string/jumbo v2, "|uri="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string/jumbo v2, "|msgs.count="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "|token="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "|mSubId="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    iget v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSubId:I

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, "|mRequestDeliveryReport="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mServiceCenter:Ljava/lang/String;

    .line 220
    iget v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    iget-boolean v7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->isExpectMore:Z

    .line 219
    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    .line 226
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_a
    const-string/jumbo v1, "empty"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "SmsMessageSender.sendMessage: caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string/jumbo v2, " from SmsManager.sendMultipartTextMessage()"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPriority(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 52
    return-void
.end method
