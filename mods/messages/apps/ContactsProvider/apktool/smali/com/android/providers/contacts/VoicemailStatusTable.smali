.class public Lcom/android/providers/contacts/VoicemailStatusTable;
.super Ljava/lang/Object;
.source "VoicemailStatusTable.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$Delegate;


# static fields
.field private static final DATABASE_LOCK:Ljava/lang/Object;

.field private static final sStatusProjectionMap:Lcom/android/common/content/ProjectionMap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

.field private final mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/common/content/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/common/content/ProjectionMap$Builder;-><init>()V

    .line 46
    const-string/jumbo v1, "_id"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "phone_account_component_name"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "phone_account_id"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "configuration_state"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "data_channel_state"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "notification_channel_state"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "settings_uri"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "source_package"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "voicemail_access_uri"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "quota_occupied"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "quota_total"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "source_type"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/VoicemailStatusTable;->sStatusProjectionMap:Lcom/android/common/content/ProjectionMap;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/VoicemailStatusTable;->DATABASE_LOCK:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/providers/contacts/CallLogDatabaseHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 72
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    .line 73
    return-void
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 104
    sget-object v1, Lcom/android/providers/contacts/VoicemailStatusTable;->DATABASE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSourcePackages()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    const-string/jumbo v2, "source_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->selectDistinctColumn(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "vnd.android.cursor.item/voicemail.source.status"

    return-object v0

    .line 148
    :cond_0
    const-string/jumbo v0, "vnd.android.cursor.dir/voicemail.source.status"

    return-object v0
.end method

.method public insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 77
    sget-object v9, Lcom/android/providers/contacts/VoicemailStatusTable;->DATABASE_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 80
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p2

    .line 81
    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/DatabaseModifier;->update(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 85
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 91
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 92
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v1, p1, v0}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 93
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 94
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    :cond_1
    monitor-exit v9

    .line 97
    return-object v6

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "File operation is not supported for status table"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 115
    sget-object v8, Lcom/android/providers/contacts/VoicemailStatusTable;->DATABASE_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 116
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/android/providers/contacts/VoicemailStatusTable;->sStatusProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 121
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 124
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p4

    move-object v7, p5

    .line 123
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    .line 128
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 135
    sget-object v6, Lcom/android/providers/contacts/VoicemailStatusTable;->DATABASE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    move-object v3, p2

    move-object v5, p4

    .line 138
    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/DatabaseModifier;->update(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
