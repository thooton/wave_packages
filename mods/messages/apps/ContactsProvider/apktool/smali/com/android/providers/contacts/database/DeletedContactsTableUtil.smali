.class public Lcom/android/providers/contacts/database/DeletedContactsTableUtil;
.super Ljava/lang/Object;
.source "DeletedContactsTableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "CREATE TABLE deleted_contacts (contact_id INTEGER PRIMARY KEY,contact_deleted_timestamp INTEGER NOT NULL default 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "deleted_contacts"

    .line 46
    const-string/jumbo v1, "contact_deleted_timestamp"

    .line 44
    invoke-static {v0, v1}, Lcom/android/providers/contacts/database/MoreDatabaseUtils;->buildCreateIndexSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static deleteOldLogs(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    const-wide v2, 0x9a7ec800L

    .line 73
    sub-long/2addr v0, v2

    .line 76
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 78
    const-string/jumbo v0, "deleted_contacts"

    .line 79
    const-string/jumbo v1, "contact_deleted_timestamp < ?"

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static insertDeletedContact(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    const-string/jumbo v1, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string/jumbo v1, "contact_deleted_timestamp"

    .line 60
    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string/jumbo v1, "deleted_contacts"

    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x5

    .line 62
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method
