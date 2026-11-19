.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# instance fields
.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/PhotoStore;II)V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 53
    iput p5, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxDisplayPhotoDim:I

    .line 54
    iput p6, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxThumbnailPhotoDim:I

    .line 55
    return-void
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 126
    const-string/jumbo v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    const-string/jumbo v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "data14"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 122
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .locals 6

    .prologue
    .line 146
    const-string/jumbo v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    new-instance v1, Lcom/android/providers/contacts/PhotoProcessor;

    .line 150
    iget v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxDisplayPhotoDim:I

    iget v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxThumbnailPhotoDim:I

    .line 149
    invoke-direct {v1, v0, v2, v3}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 151
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v2

    .line 152
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "data14"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :goto_0
    const-string/jumbo v0, "data15"

    invoke-virtual {v1}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    const-string/jumbo v0, "data14"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string/jumbo v1, "DataRowHandlerForPhoto"

    const-string/jumbo v2, "Could not process photo for insert or update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 135
    return v2
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v0, "skip_processing"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string/jumbo v0, "skip_processing"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 71
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 74
    :cond_1
    return-wide v0

    .line 65
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-interface {p4, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 82
    const-string/jumbo v2, "skip_processing"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string/jumbo v2, "skip_processing"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    return v3

    .line 86
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    return v3

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 97
    return v4
.end method
