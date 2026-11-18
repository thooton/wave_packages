.class public Lcom/android/providers/contacts/ProfileDatabaseHelper;
.super Lcom/android/providers/contacts/ContactsDatabaseHelper;
.source "ProfileDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 5

    .prologue
    const-class v1, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const-string/jumbo v2, "profile.db"

    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 57
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNewInstanceForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 3
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 70
    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->SEQUENCE_TABLES:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 71
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 72
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v3, "seq"

    const-wide v6, 0x7fffffff80000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string/jumbo v3, "sqlite_sequence"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method protected loadDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected postOnCreate()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected setDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
