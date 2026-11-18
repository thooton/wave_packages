.class Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;
.super Ljava/lang/Object;
.source "ContactsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageEventArg"
.end annotation


# instance fields
.field final broadcastPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->packageName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->broadcastPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
