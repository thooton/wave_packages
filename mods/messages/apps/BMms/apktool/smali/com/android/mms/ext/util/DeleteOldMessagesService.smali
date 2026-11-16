.class public Lcom/android/mms/ext/util/DeleteOldMessagesService;
.super Landroid/app/IntentService;
.source "DeleteOldMessagesService.java"


# instance fields
.field private mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/mms/ext/util/DeleteOldMessagesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ext/util/DeleteOldMessagesService;->mAction:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "onDestroy DeleteOldMessagesService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "DeleteOldMessagesService do not have basic permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "DeleteOldMessagesService is not the default sms app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ext/util/DeleteOldMessagesService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Delete old messages by days feature is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ext/util/DeleteOldMessagesService;->mAction:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/mms/ext/util/DeleteOldMessagesService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "borqs.intent.action.DELETE_OLD_MESSAGES_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    const-string/jumbo v0, "receivedIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz v1, :cond_5

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    const/4 v0, 0x1

    .line 83
    :cond_5
    if-eqz v0, :cond_6

    .line 84
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/mms/ext/util/RecyclerExt;->getSmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;->deleteOldMessages(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/android/mms/ext/util/RecyclerExt;->getMmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;->deleteOldMessages(Landroid/content/Context;)V

    .line 92
    if-eqz v0, :cond_7

    .line 93
    invoke-static {p0}, Lcom/android/mms/ext/util/AlarmUtils;->startAlarm(Landroid/content/Context;)V

    .line 96
    :cond_7
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
