.class public Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupPreloadQuery;,
        Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupQuery;
    }
.end annotation


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mNicknameBloomFilter:Ljava/util/BitSet;

.field private final mNicknameClusterCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method

.method private preloadNicknameBloomFilter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 71
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    .line 72
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "nickname_lookup"

    .line 73
    sget-object v2, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupPreloadQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 72
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 76
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v0, v8

    .line 77
    :goto_0
    if-ge v0, v2, :cond_0

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 79
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 81
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 83
    throw v0
.end method


# virtual methods
.method public getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-object v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->preloadNicknameBloomFilter()V

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 100
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    and-int/lit16 v0, v0, 0x1fff

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    return-object v1

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-nez v0, :cond_3

    monitor-exit v2

    .line 110
    return-object v1

    .line 112
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 116
    if-nez v0, :cond_4

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->loadNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 120
    :try_start_2
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mNicknameClusterCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 123
    :cond_4
    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 118
    :cond_5
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method protected loadNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "nickname_lookup"

    sget-object v2, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 139
    const-string/jumbo v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v6, v5

    move-object v7, v5

    .line 138
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 143
    if-lez v2, :cond_0

    .line 144
    new-array v5, v2, [Ljava/lang/String;

    move v0, v8

    .line 145
    :goto_0
    if-ge v0, v2, :cond_0

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 147
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 153
    return-object v5

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    throw v0
.end method
