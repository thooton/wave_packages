.class Lcom/android/providers/contacts/ContactsPackageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsPackageMonitor;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsPackageMonitor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$2;->this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;

    .line 104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsPackageMonitor$2;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$2;->this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsPackageMonitor;->-get0(Lcom/android/providers/contacts/ContactsPackageMonitor;)Lcom/android/providers/contacts/ContactsTaskScheduler;

    move-result-object v2

    .line 114
    new-instance v3, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/providers/contacts/ContactsTaskScheduler;->scheduleTask(ILjava/lang/Object;)V

    .line 115
    return-void
.end method
