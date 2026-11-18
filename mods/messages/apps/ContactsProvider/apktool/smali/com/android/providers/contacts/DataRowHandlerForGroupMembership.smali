.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
    }
.end annotation


# instance fields
.field private final mGroupIdCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    const-string/jumbo v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 72
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/Map;

    .line 73
    return-void
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/Long;)J
    .locals 14

    .prologue
    .line 192
    if-nez p5, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 194
    const-string/jumbo v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    .line 195
    const-string/jumbo v5, "raw_contacts._id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 194
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 197
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p5

    .line 201
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    if-nez p5, :cond_2

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Raw contact not found for _ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :catchall_0
    move-exception v2

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 200
    throw v2

    .line 208
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 210
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 211
    if-nez v2, :cond_7

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 216
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 217
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_4

    .line 218
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 219
    iget-wide v6, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountId:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_3

    .line 220
    iget-wide v2, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    return-wide v2

    .line 217
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 224
    :cond_4
    new-instance v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct {v12}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 225
    iput-wide v10, v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountId:J

    .line 226
    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    const-string/jumbo v3, "groups"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;->ID:[Ljava/lang/String;

    .line 232
    const-string/jumbo v5, "sourceid=? AND account_id=?"

    .line 233
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 231
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 236
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 253
    iget-wide v2, v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    return-wide v2

    .line 239
    :cond_5
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    const-string/jumbo v4, "account_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string/jumbo v4, "sourceid"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v4, "groups"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 243
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 244
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to create a new group with this sourceid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    :catchall_1
    move-exception v2

    .line 250
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 249
    throw v2

    .line 247
    :cond_6
    :try_start_3
    iput-wide v4, v12, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_7
    move-object v3, v2

    goto/16 :goto_0
.end method

.method private hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 116
    const-string/jumbo v3, "vnd.android.cursor.item/group_membership"

    .line 115
    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    .line 118
    const-string/jumbo v4, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    .line 119
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 117
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 120
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0
.end method

.method private resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 6

    .prologue
    .line 149
    const-string/jumbo v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 150
    const-string/jumbo v1, "data1"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 151
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string/jumbo v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez v0, :cond_2

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 158
    if-eqz p6, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    const-string/jumbo v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    return-void

    .line 167
    :cond_2
    if-eqz v0, :cond_3

    .line 168
    const-string/jumbo v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->getAccountIdOrNullForRawContact(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    .line 171
    const-string/jumbo v2, "group_sourceid"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "data1"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    :cond_3
    return-void
.end method

.method private updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string/jumbo v4, "starred"

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string/jumbo v0, "raw_contacts"

    const-string/jumbo v4, "_id=?"

    .line 108
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 107
    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateStarred(J)V

    .line 111
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method private updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 138
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateAggregationAfterVisibilityChange(J)V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 5

    .prologue
    .line 125
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 126
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v3

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 129
    if-eqz v2, :cond_0

    xor-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 132
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 133
    return v3
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 79
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 80
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 83
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 84
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 91
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v7

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 93
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return v6

    .line 96
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    .line 97
    if-eq v7, v0, :cond_1

    .line 98
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 100
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 101
    return v8
.end method
