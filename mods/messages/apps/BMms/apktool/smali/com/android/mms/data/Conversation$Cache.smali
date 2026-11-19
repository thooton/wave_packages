.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    .line 1279
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    .line 1285
    return-void
.end method

.method static dumpCache()V
    .locals 5

    .prologue
    .line 1399
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1400
    :try_start_0
    const-string/jumbo v0, "Conversation dumpCache: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   conv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    .line 1405
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 6

    .prologue
    .line 1292
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1293
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conversation get with threadId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1301
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v3, v4, p0

    if-nez v3, :cond_1

    monitor-exit v1

    .line 1302
    return-object v0

    :cond_2
    monitor-exit v1

    .line 1306
    const/4 v0, 0x0

    return-object v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 4

    .prologue
    .line 1314
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1315
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conversation get with ContactList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1319
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    .line 1320
    return-object v0

    :cond_2
    monitor-exit v1

    .line 1324
    const/4 v0, 0x0

    return-object v0

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 1281
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1412
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1413
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1414
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1416
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    .line 1425
    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 6

    .prologue
    .line 1333
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1336
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conversation.Cache.put: conv= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1345
    const-string/jumbo v3, " threadId: "

    .line 1344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1345
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->-get2(Lcom/android/mms/data/Conversation;)J

    move-result-wide v4

    .line 1344
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1347
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1349
    return-void
.end method

.method static remove(J)V
    .locals 6

    .prologue
    .line 1384
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1389
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1390
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v3, v4, p0

    if-nez v3, :cond_0

    .line 1391
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1392
    return-void

    :cond_1
    monitor-exit v1

    .line 1396
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static replace(Lcom/android/mms/data/Conversation;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1361
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1362
    :try_start_0
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conversation.Cache.put: conv= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", hash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 1370
    return v3

    .line 1377
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1378
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
