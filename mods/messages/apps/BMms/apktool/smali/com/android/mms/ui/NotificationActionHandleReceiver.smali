.class public Lcom/android/mms/ui/NotificationActionHandleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationActionHandleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private downloadAttachment(Landroid/content/Context;JJ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 98
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 102
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMmsMemoryFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const v0, 0x7f07023e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 107
    const v0, 0x7f070244

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const v0, 0x7f070243

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v1, 0x1

    .line 111
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    return-void

    .line 120
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string/jumbo v2, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 129
    const/16 v2, 0x83

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v7, 0x7b

    const-wide/16 v2, -0x1

    .line 70
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "NotificationActionHandleReceiver do not have basic permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 74
    :cond_0
    if-nez p2, :cond_1

    .line 75
    return-void

    .line 78
    :cond_1
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    .line 79
    const-string/jumbo v0, "com.android.mms.MARK_AS_READ"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const-string/jumbo v0, "msg_thread_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    const-string/jumbo v2, "key_is_group"

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 83
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->markAsReadDelayNotification()V

    .line 86
    invoke-static {p1, v7, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotificationItem(Landroid/content/Context;IJZ)V

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    const-string/jumbo v0, "com.android.mms.DOWNLOAD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string/jumbo v0, "msg_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 91
    const-string/jumbo v0, "msg_sub_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/NotificationActionHandleReceiver;->downloadAttachment(Landroid/content/Context;JJ)V

    .line 93
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
