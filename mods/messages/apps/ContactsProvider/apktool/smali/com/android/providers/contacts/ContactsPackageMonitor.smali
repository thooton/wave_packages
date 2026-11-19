.class public Lcom/android/providers/contacts/ContactsPackageMonitor;
.super Ljava/lang/Object;
.source "ContactsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;
    }
.end annotation


# static fields
.field private static final VERBOSE_LOGGING:Z

.field private static sInstance:Lcom/android/providers/contacts/ContactsPackageMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;


# direct methods
.method static synthetic -get0(Lcom/android/providers/contacts/ContactsPackageMonitor;)Lcom/android/providers/contacts/ContactsTaskScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/providers/contacts/ContactsPackageMonitor;Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsPackageMonitor;->onPackageChanged(Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    sput-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/providers/contacts/ContactsPackageMonitor$1;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsPackageMonitor;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsPackageMonitor$1;-><init>(Lcom/android/providers/contacts/ContactsPackageMonitor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    .line 77
    return-void
.end method

.method static cleanupVoicemail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/android/providers/contacts/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    sget-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ContactsPackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up data for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    const-string/jumbo v0, "com.android.voicemail"

    invoke-static {p0, v0}, Lcom/android/providers/contacts/ContactsPackageMonitor;->getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/VoicemailContentProvider;

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->removeBySourcePackage(Ljava/lang/String;)V

    .line 154
    :cond_2
    return-void
.end method

.method private static getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    return-object v0

    .line 162
    :cond_0
    const-string/jumbo v0, "ContactsPackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v3
.end method

.method private onPackageChanged(Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;)V
    .locals 4

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->packageName:Ljava/lang/String;

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "ContactsPackageMonitor"

    const-string/jumbo v1, "Empty package name detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    sget-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ContactsPackageMonitor"

    const-string/jumbo v1, "Calling PendingResult.finish()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p1, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->broadcastPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 124
    return-void

    .line 126
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ContactsPackageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageChanged: Scanning package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.contacts"

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsPackageMonitor;->getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsProvider2;

    .line 130
    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->onPackageChanged(Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsPackageMonitor;->cleanupVoicemail(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    sget-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ContactsPackageMonitor"

    const-string/jumbo v1, "Calling PendingResult.finish()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    iget-object v0, p1, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->broadcastPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 140
    return-void

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    sget-boolean v1, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ContactsPackageMonitor"

    const-string/jumbo v2, "Calling PendingResult.finish()..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    iget-object v1, p1, Lcom/android/providers/contacts/ContactsPackageMonitor$PackageEventArg;->broadcastPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 136
    throw v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsPackageMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/providers/contacts/ContactsPackageMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsPackageMonitor$2;-><init>(Lcom/android/providers/contacts/ContactsPackageMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "ContactsPackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting... user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsPackageMonitor;->registerReceiver()V

    .line 86
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 2

    .prologue
    const-class v1, Lcom/android/providers/contacts/ContactsPackageMonitor;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->sInstance:Lcom/android/providers/contacts/ContactsPackageMonitor;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/providers/contacts/ContactsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->sInstance:Lcom/android/providers/contacts/ContactsPackageMonitor;

    .line 91
    sget-object v0, Lcom/android/providers/contacts/ContactsPackageMonitor;->sInstance:Lcom/android/providers/contacts/ContactsPackageMonitor;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactsPackageMonitor;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 93
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
