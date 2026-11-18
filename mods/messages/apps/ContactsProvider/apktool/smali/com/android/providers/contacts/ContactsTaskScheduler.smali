.class public abstract Lcom/android/providers/contacts/ContactsTaskScheduler;
.super Ljava/lang/Object;
.source "ContactsTaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;
    }
.end annotation


# static fields
.field public static final VERBOSE_LOGGING:Z


# instance fields
.field private mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mQuitter:Ljava/lang/Runnable;

.field private final mShutdownTimeoutSeconds:I

.field private mThread:Landroid/os/HandlerThread;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThreadSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lcom/android/providers/contacts/ContactsTaskScheduler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/providers/contacts/ContactsTaskScheduler;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    sput-boolean v0, Lcom/android/providers/contacts/ContactsTaskScheduler;->VERBOSE_LOGGING:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x3c

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsTaskScheduler;-><init>(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThreadSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/android/providers/contacts/-$Lambda$Cx62asJnuQmVEJh5hBDUxfb8oJM;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/-$Lambda$Cx62asJnuQmVEJh5hBDUxfb8oJM;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mQuitter:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mShutdownTimeoutSeconds:I

    .line 65
    return-void
.end method

.method private isRunning()Z
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopThread(Z)V
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-boolean v0, Lcom/android/providers/contacts/ContactsTaskScheduler;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "ContactsTaskScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stopping..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz p1, :cond_1

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 148
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getThreadSequenceNumber()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThreadSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isRunningForTest()Z
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsTaskScheduler;->isRunning()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_providers_contacts_ContactsTaskScheduler_2457()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsTaskScheduler;->stopThread(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public abstract onPerformTask(ILjava/lang/Object;)V
.end method

.method public scheduleTask(I)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/ContactsTaskScheduler;->scheduleTask(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public scheduleTask(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsTaskScheduler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Worker-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThreadSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;-><init>(Lcom/android/providers/contacts/ContactsTaskScheduler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    .line 108
    sget-boolean v0, Lcom/android/providers/contacts/ContactsTaskScheduler;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "ContactsTaskScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;->sendEmptyMessage(I)Z

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mQuitter:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mQuitter:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mShutdownTimeoutSeconds:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 122
    return-void

    .line 115
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTaskScheduler;->mHandler:Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTaskScheduler$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shutdownForTest()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsTaskScheduler;->stopThread(Z)V

    .line 129
    return-void
.end method
