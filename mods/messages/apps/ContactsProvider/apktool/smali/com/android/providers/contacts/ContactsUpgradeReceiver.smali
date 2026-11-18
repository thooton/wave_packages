.class public Lcom/android/providers/contacts/ContactsUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getOsVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/16 v9, 0x4b2

    .line 53
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    const-string/jumbo v2, "ContactsUpgradeReceiver"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    const-string/jumbo v3, "db_version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 59
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/android/providers/contacts/ContactsUpgradeReceiver;->getOsVersionString()Ljava/lang/String;

    move-result-object v5

    .line 62
    const-string/jumbo v6, "icu_version"

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string/jumbo v7, "os_version"

    const-string/jumbo v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    if-ne v3, v9, :cond_0

    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 66
    if-nez v3, :cond_0

    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 66
    if-eqz v3, :cond_1

    .line 73
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 74
    const-string/jumbo v3, "db_version"

    const/16 v6, 0x4b2

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string/jumbo v3, "icu_version"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string/jumbo v3, "os_version"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    .line 83
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v3

    .line 84
    invoke-static {p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v4

    .line 86
    const-string/jumbo v5, "ContactsUpgradeReceiver"

    const-string/jumbo v6, "Creating or opening contacts database"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->forceDirectoryRescan()V

    .line 91
    invoke-virtual {v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    invoke-virtual {v4}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    invoke-static {p1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleOffline(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ProfileDatabaseHelper;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Lcom/android/providers/contacts/EventLogTags;->writeContactsUpgradeReceiver(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "ContactsUpgradeReceiver"

    const-string/jumbo v2, "Error during upgrade attempt. Disabling receiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsUpgradeReceiver;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const/4 v2, 0x2

    .line 106
    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
