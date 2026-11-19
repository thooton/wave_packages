.class public Lcom/sonim/borqs/launcher/helper/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private mAppCursor:Landroid/database/Cursor;

.field private mApplicationQuery:Ljava/lang/String;

.field private mAppsAndFolderCursor:Landroid/database/Cursor;

.field private mAppsAndFolderQuery:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mFolderCursor:Landroid/database/Cursor;

.field private mFolderQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "App_Tray"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    const-string/jumbo v0, "SELECT * FROM appinfo WHERE folder = \'\' "

    .line 66
    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mApplicationQuery:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "SELECT * FROM appinfo "

    .line 68
    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderQuery:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "SELECT * FROM appinfo WHERE folder != \'null\' AND folder !=  \'\' "

    .line 70
    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mFolderQuery:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    :cond_3
    iput-object v1, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 162
    return-void
.end method

.method public createToDo(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "pkgname"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "appinfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 107
    return-wide v0
.end method

.method public dropTable(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "DatabaseHelper"

    const-string/jumbo v1, " drop table"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "App_Tray"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 192
    return-void
.end method

.method public getAppAndFolderCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v0, p0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->mAppsAndFolderCursor:Landroid/database/Cursor;

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    return-object v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "CREATE TABLE appinfo(id INTEGER PRIMARY KEY AUTOINCREMENT,folder TEXT,pkgname TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "DROP TABLE IF EXISTS appinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    return-void
.end method
