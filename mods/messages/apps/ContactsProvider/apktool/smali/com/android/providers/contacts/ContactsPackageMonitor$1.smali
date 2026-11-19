.class Lcom/android/providers/contacts/ContactsPackageMonitor$1;
.super Lcom/android/providers/contacts/ContactsTaskScheduler;
.source "ContactsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsPackageMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsPackageMonitor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$1;->this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;

    .line 67
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsTaskScheduler;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onPerformTask(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$1;->this$0:Lcom/android/providers/contacts/ContactsPackageMonitor;

    check-cast p2, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;

    invoke-static {v0, p2}, Lcom/android/providers/contacts/ContactsPackageMonitor;->-wrap0(Lcom/android/providers/contacts/ContactsPackageMonitor;Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
