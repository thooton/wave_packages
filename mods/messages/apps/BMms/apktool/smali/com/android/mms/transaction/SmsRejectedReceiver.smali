.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "SmsRejectedReceiver do not have basic permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 49
    const-string/jumbo v3, "device_provisioned"

    .line 48
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 50
    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 52
    const-string/jumbo v1, "result"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move v1, v0

    .line 54
    :goto_0
    if-nez v1, :cond_2

    .line 56
    return-void

    :cond_1
    move v1, v2

    .line 53
    goto :goto_0

    .line 60
    :cond_2
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/app/NotificationManager;

    .line 62
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/high16 v4, 0x34000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 70
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 73
    const v2, 0x7f020104

    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 76
    if-eqz v1, :cond_4

    .line 77
    const v2, 0x7f07023d

    .line 78
    const v1, 0x7f07023e

    .line 83
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 84
    iput v6, v4, Landroid/app/Notification;->defaults:I

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v4, p1, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 90
    const/16 v1, 0xef

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 92
    :cond_3
    return-void

    .line 80
    :cond_4
    const v2, 0x7f070245

    .line 81
    const v1, 0x7f070246

    goto :goto_1
.end method
