.class public Lcom/android/providers/contacts/DataRowHandlerForOrganization;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForOrganization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;)V
    .locals 7

    .prologue
    .line 37
    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    const-string/jumbo v5, "data2"

    const-string/jumbo v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 128
    const-string/jumbo v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameFromColumn(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameFromColumn(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "data1"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 132
    const-string/jumbo v0, "data8"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 134
    const-string/jumbo v0, "data7"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 135
    const-string/jumbo v0, "data5"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v0, "data9"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 137
    const-string/jumbo v0, "data6"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 119
    const-string/jumbo v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 97
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v4

    .line 100
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 101
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 102
    return v4
.end method

.method protected getTypeRank(I)I
    .locals 1

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 111
    const/16 v0, 0x3e8

    return v0

    .line 108
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 109
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 110
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "data4"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 49
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return v7

    .line 59
    :cond_0
    const-string/jumbo v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 60
    const-string/jumbo v1, "data4"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 61
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 62
    :cond_1
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 63
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 67
    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :goto_0
    if-eqz v1, :cond_4

    .line 79
    const-string/jumbo v0, "data4"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 89
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 91
    :cond_2
    return v8

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 72
    const-string/jumbo v0, "SELECT data1 FROM data WHERE _id=?"

    .line 74
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    .line 71
    invoke-static {p1, v0, v6}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 83
    const-string/jumbo v0, "SELECT data4 FROM data WHERE _id=?"

    .line 85
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    .line 82
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
