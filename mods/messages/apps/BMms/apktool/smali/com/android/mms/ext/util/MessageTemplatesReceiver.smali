.class public Lcom/android/mms/ext/util/MessageTemplatesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageTemplatesReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "MessageTemplatesReceiver do not have basic permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Message template receiver called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-class v0, Lcom/android/mms/ext/util/ImportTemplatesService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method
