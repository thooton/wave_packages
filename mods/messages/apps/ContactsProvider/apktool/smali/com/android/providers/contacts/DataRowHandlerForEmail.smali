.class public Lcom/android/providers/contacts/DataRowHandlerForEmail;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForEmail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;)V
    .locals 7

    .prologue
    .line 33
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    const-string/jumbo v5, "data2"

    const-string/jumbo v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 75
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v4

    .line 79
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForEmail;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 80
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 81
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 82
    return v4
.end method

.method protected getTypeRank(I)I
    .locals 1

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 92
    const/16 v0, 0x3e8

    return v0

    .line 88
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 89
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 90
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 91
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 7

    .prologue
    .line 39
    const-string/jumbo v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v4

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 44
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForEmail;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 48
    :cond_0
    return-wide v4
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 58
    :cond_0
    const-string/jumbo v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 60
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 62
    const-string/jumbo v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForEmail;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 64
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForEmail;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 66
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 69
    :cond_1
    return v7
.end method
