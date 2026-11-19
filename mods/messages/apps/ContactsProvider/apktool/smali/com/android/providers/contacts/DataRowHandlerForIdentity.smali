.class public Lcom/android/providers/contacts/DataRowHandlerForIdentity;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForIdentity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;)V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "vnd.android.cursor.item/identity"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 67
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 68
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 70
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 40
    const-string/jumbo v2, "data1"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "data2"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 44
    :cond_1
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;ZZ)Z

    .line 54
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 55
    const-string/jumbo v2, "data1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "data2"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 59
    :cond_1
    return v3
.end method
