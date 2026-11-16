.class public Lcom/android/mms/util/PduLoaderManager;
.super Lcom/android/mms/util/BackgroundLoaderManager;
.source "PduLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/PduLoaderManager$PduLoaded;,
        Lcom/android/mms/util/PduLoaderManager$PduTask;
    }
.end annotation


# static fields
.field private static mPduCache:Lcom/google/android/mms/util/PduCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private final mSlideshowCache:Lcom/android/mms/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/util/PduLoaderManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/util/PduLoaderManager;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/util/PduLoaderManager;)Lcom/android/mms/util/SimpleCache;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/android/mms/util/SimpleCache;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/SimpleCache;-><init>(IIFZ)V

    iput-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    .line 69
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    .line 70
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 71
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/mms/util/BackgroundLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 136
    sget-object v1, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Lcom/google/android/mms/util/PduCache;->purgeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 139
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SimpleCache;->clear()V

    .line 140
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic clearCallback()V
    .locals 0

    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clearCallback()V

    return-void
.end method

.method public getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/PduLoaderManager$PduLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_0
    sget-object v5, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 82
    :try_start_0
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 83
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_0
    monitor-exit v5

    .line 86
    if-eqz p2, :cond_4

    .line 87
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    move-object v7, v0

    .line 89
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v7, :cond_5

    :cond_1
    move v6, v3

    .line 90
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 91
    :goto_3
    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 92
    if-eqz v0, :cond_2

    xor-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_7

    :cond_2
    xor-int/lit8 v5, v5, 0x1

    .line 93
    :goto_4
    if-eqz p3, :cond_8

    .line 95
    :goto_5
    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    .line 96
    if-eqz v3, :cond_3

    .line 97
    new-instance v0, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    invoke-virtual {v1}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/mms/util/PduLoaderManager$PduLoaded;-><init>(Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;)V

    .line 98
    invoke-interface {p3, v0, v2}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 100
    :cond_3
    new-instance v0, Lcom/android/mms/util/NullItemLoadedFuture;

    invoke-direct {v0}, Lcom/android/mms/util/NullItemLoadedFuture;-><init>()V

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    move-object v7, v2

    .line 87
    goto :goto_1

    :cond_5
    move v6, v4

    .line 89
    goto :goto_2

    :cond_6
    move v0, v4

    .line 90
    goto :goto_3

    :cond_7
    move v5, v4

    .line 92
    goto :goto_4

    :cond_8
    move v3, v4

    .line 93
    goto :goto_5

    .line 103
    :cond_9
    if-eqz v3, :cond_a

    .line 104
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/util/PduLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    .line 107
    :cond_a
    if-eqz v5, :cond_b

    .line 108
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/util/PduLoaderManager$PduTask;-><init>(Lcom/android/mms/util/PduLoaderManager;Landroid/net/Uri;Z)V

    .line 110
    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    :cond_b
    new-instance v0, Lcom/android/mms/util/PduLoaderManager$1;

    invoke-direct {v0, p0, p3}, Lcom/android/mms/util/PduLoaderManager$1;-><init>(Lcom/android/mms/util/PduLoaderManager;Lcom/android/mms/util/ItemLoadedCallback;)V

    return-object v0

    :cond_c
    move-object v1, v2

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "Mms"

    return-object v0
.end method

.method public bridge synthetic onLowMemory()V
    .locals 0

    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->onLowMemory()V

    return-void
.end method

.method public removePdu(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 143
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    .line 147
    sget-object v1, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 150
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
