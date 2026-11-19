.class public Lcom/android/providers/contacts/PhotoStore;
.super Ljava/lang/Object;
.source "PhotoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PhotoStore$Entry;
    }
.end annotation


# static fields
.field private static final MKDIRS_LOCK:Ljava/lang/Object;


# instance fields
.field private final DIRECTORY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/PhotoStore$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorePath:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/PhotoStore;->MKDIRS_LOCK:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "photos"

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->DIRECTORY:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 71
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "photos"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    .line 72
    sget-object v1, Lcom/android/providers/contacts/PhotoStore;->MKDIRS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create photo storage directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    .line 80
    iput-object p2, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/contacts/PhotoStore;->initialize()V

    .line 83
    return-void
.end method

.method private cleanupFile(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    const-string/jumbo v0, "Could not clean up file %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return-void
.end method

.method private getFileForPhotoFileId(J)Ljava/io/File;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    .locals 7

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v2, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 263
    iget-wide v2, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v4, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    iget-wide v0, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    goto :goto_0
.end method

.method private removeEntry(J)V
    .locals 7

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-wide v2, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v0, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "photo_files"

    const-string/jumbo v2, "photo_files._id=?"

    .line 279
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    return-void
.end method


# virtual methods
.method public cleanup(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cleanup removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 156
    invoke-virtual {p0, v2, v3}, Lcom/android/providers/contacts/PhotoStore;->remove(J)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 163
    return-object v0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 92
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "photo_files"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 101
    return-void
.end method

.method public get(J)Lcom/android/providers/contacts/PhotoStore$Entry;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    return-wide v0
.end method

.method public final initialize()V
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 121
    if-nez v1, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 126
    :try_start_0
    new-instance v4, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v4, v3}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 127
    iget-wide v6, v4, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v6, v7, v4}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v4

    .line 130
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    return-void
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;)J
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 190
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->getMaxThumbnailPhotoDim()I

    move-result v3

    .line 192
    if-nez p2, :cond_0

    if-le v2, v3, :cond_1

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhotoBytes()[B

    move-result-object v3

    .line 199
    const-string/jumbo v4, "img"

    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 200
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 201
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 202
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 205
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 206
    const-string/jumbo v5, "height"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string/jumbo v1, "width"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string/jumbo v1, "filesize"

    array-length v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "photo_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 210
    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    .line 212
    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    new-instance v4, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v4, v1}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 215
    iget-wide v6, v4, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v6, v7, v4}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-wide v2

    .line 192
    :cond_1
    if-gt v1, v3, :cond_0

    .line 228
    :cond_2
    :goto_0
    return-wide v8

    .line 219
    :catch_0
    move-exception v1

    .line 224
    :cond_3
    if-eqz v0, :cond_2

    .line 225
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public remove(J)V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->removeEntry(J)V

    .line 244
    return-void
.end method
