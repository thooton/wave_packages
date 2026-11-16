.class public Lcom/android/mms/rcs/RcsConfirmDialogActivity;
.super Landroid/app/Activity;
.source "RcsConfirmDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;,
        Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->sendMessage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->updateMessageState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private deleteMessage(J)V
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private sendMessage()V
    .locals 12

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 153
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getChachIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 155
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 157
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getCacheVaule([Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v8

    .line 159
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v2, Lcom/android/mms/transaction/SmsMessageSender;

    .line 161
    const/4 v5, 0x1

    aget-object v5, v8, v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 162
    const/4 v11, 0x2

    aget-object v8, v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 160
    invoke-direct/range {v2 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 163
    const/4 v4, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 164
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->deleteMessage(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    invoke-static {v2}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->clearCacheMessage()V

    .line 170
    return-void
.end method

.method private showPolicyDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getCacheMessage()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->finish()V

    .line 88
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    const v1, 0x7f0700ea

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;-><init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;)V

    const v2, 0x7f0700c1

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;-><init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;)V

    const v2, 0x7f0700eb

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void
.end method

.method private updateMessageState()V
    .locals 7

    .prologue
    .line 137
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getChachIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 140
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 142
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 143
    const-string/jumbo v4, "rcs_msg_state"

    .line 144
    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 143
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 146
    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 81
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->showPolicyDialog()V

    .line 82
    return-void
.end method
