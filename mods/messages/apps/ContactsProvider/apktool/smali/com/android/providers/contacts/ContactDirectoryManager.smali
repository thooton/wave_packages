.class public Lcom/android/providers/contacts/ContactDirectoryManager;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;,
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private volatile mDirectoriesForceUpdated:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    sput-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mDirectoriesForceUpdated:Z

    .line 110
    iput-object p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 111
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    return-void
.end method

.method private areTypeResourceIdsValid()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "SELECT DISTINCT typeResourceId,packageName,typeResourceName FROM directories"

    .line 136
    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 138
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-direct {p0, v2, v0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    sget-boolean v5, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 146
    const-string/jumbo v5, "ContactDirectoryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "areTypeResourceIdsValid: resourceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v6, " packageName="

    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string/jumbo v2, " storedResourceName="

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v2, " resourceName="

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    return v8

    .line 157
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    return v6

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 156
    throw v0
.end method

.method private static getDirectoryProviderInfos(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string/jumbo v0, "android.content.ContactDirectory"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getDirectoryProviderPackages(Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 283
    sget-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v2, "Listing directory provider packages..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    invoke-static {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDirectoryProviderInfos(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 288
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    sget-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 291
    const-string/jumbo v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " directory provider packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    return-object v1
.end method

.method private getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    return-object v1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    return-object v1
.end method

.method private haveKnownDirectoryProvidersChanged(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 184
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    const-string/jumbo v2, "knownDirectoryPackages"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 188
    sget-boolean v3, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 189
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "haveKnownDirectoryProvidersChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nprev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v4, " current="

    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return v2
.end method

.method private insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const v4, 0x7f040007

    .line 366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 367
    const-string/jumbo v1, "_id"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "authority"

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string/jumbo v1, "typeResourceName"

    .line 372
    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string/jumbo v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string/jumbo v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 377
    return-void
.end method

.method private insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const v4, 0x7f040008

    .line 380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 381
    const-string/jumbo v1, "_id"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "authority"

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string/jumbo v1, "typeResourceName"

    .line 386
    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string/jumbo v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string/jumbo v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 391
    return-void
.end method

.method static isDirectoryProvider(Landroid/content/pm/ProviderInfo;)Z
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 262
    if-nez p0, :cond_0

    return v0

    .line 263
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 264
    if-nez v1, :cond_1

    return v0

    .line 266
    :cond_1
    const-string/jumbo v2, "android.content.ContactDirectory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method private saveKnownDirectoryProviders(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    const-string/jumbo v1, "knownDirectoryPackages"

    .line 180
    const-string/jumbo v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private scanAllPackages()I
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 299
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 300
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    const-string/jumbo v0, "NOT (_id=? OR _id=?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string/jumbo v0, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    .line 316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDirectoryProviderPackages(Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object v6

    .line 317
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    sget-boolean v8, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "ContactDirectoryManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v8, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 323
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v8, "  skipping self"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 329
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 330
    const/16 v9, 0x88

    .line 329
    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 331
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    move v0, v1

    .line 333
    goto :goto_1

    .line 336
    :cond_2
    const/4 v8, 0x1

    invoke-direct {p0, v0, v8}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v1, v8

    .line 341
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 342
    sget-boolean v9, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "ContactDirectoryManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  directory="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    const-string/jumbo v9, " OR "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v9, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v9, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v9, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v9, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v0, v1

    .line 337
    goto :goto_1

    .line 353
    :cond_5
    const-string/jumbo v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v7, "directories"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v7, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 358
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/ContactDirectoryManager;->saveKnownDirectoryProviders(Ljava/util/Set;)V

    .line 360
    const-string/jumbo v2, "ContactDirectoryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    const-string/jumbo v3, " stale rows which don\'t have any relevant directory"

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method private scanAllPackagesIfNeeded()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->isRescanNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    return v8

    .line 235
    :cond_0
    sget-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 236
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "scanAllPackagesIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 241
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mDirectoriesForceUpdated:Z

    .line 242
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackages()I

    move-result v2

    .line 243
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    const-string/jumbo v4, "directoryScanComplete"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 245
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Discovered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " contact directories in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v4, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, v8, v8}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(ZZ)V

    .line 252
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mDirectoriesForceUpdated:Z

    if-eqz v0, :cond_2

    .line 253
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mDirectoriesForceUpdated:Z

    .line 254
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleRescanDirectories()V

    .line 257
    :cond_2
    return v2
.end method

.method private updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 557
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 558
    const-string/jumbo v0, "packageName"

    iget-object v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v0, "authority"

    iget-object v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v0, "accountName"

    iget-object v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string/jumbo v0, "accountType"

    iget-object v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v0, "typeResourceId"

    iget v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string/jumbo v0, "displayName"

    iget-object v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v0, "exportSupport"

    iget v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string/jumbo v0, "shortcutSupport"

    iget v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string/jumbo v0, "photoSupport"

    iget v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    iget v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    iget v1, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string/jumbo v1, "typeResourceName"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    const-string/jumbo v1, "directories"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 574
    const-string/jumbo v3, "packageName=? AND authority=? AND accountName=? AND accountType=?"

    .line 576
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    .line 577
    iget-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    iget-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v0, v4, v5

    iget-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v0, v4, v5

    .line 578
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 573
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 581
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 583
    const-string/jumbo v3, "directories"

    const-string/jumbo v4, "_id=?"

    .line 584
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 583
    invoke-virtual {p1, v3, v10, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 588
    :goto_1
    iput-wide v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 586
    :cond_1
    :try_start_1
    const-string/jumbo v0, "directories"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_1

    .line 589
    :catchall_0
    move-exception v0

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 589
    throw v0

    .line 593
    :cond_2
    return-void
.end method

.method private updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 424
    sget-boolean v1, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 425
    const-string/jumbo v1, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDirectoriesForPackage  packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string/jumbo v3, " initialScan="

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 431
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 432
    if-eqz v2, :cond_2

    .line 433
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 434
    invoke-static {v4}, Lcom/android/providers/contacts/ContactDirectoryManager;->isDirectoryProvider(Landroid/content/pm/ProviderInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    invoke-virtual {p0, v1, v4}, Lcom/android/providers/contacts/ContactDirectoryManager;->queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 441
    return-object v6

    .line 444
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 447
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "packageName=?"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 451
    const-string/jumbo v0, " AND _id NOT IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 453
    iget-wide v6, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 464
    :catchall_0
    move-exception v0

    .line 465
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 464
    throw v0

    .line 455
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_5
    const-string/jumbo v0, "directories"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 458
    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 460
    sget-boolean v3, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 461
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " stale rows"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->resetDirectoryCache()V

    .line 469
    return-object v1
.end method


# virtual methods
.method public getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method isRescanNeeded()Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 197
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "debug.cp2.scan_all_packages"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "debug.cp2.scan_all_packages set to 1."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v3

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    const-string/jumbo v1, "directoryScanComplete"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    sget-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 205
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "DIRECTORY_SCAN_COMPLETE is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    return v3

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDirectoryProviderPackages(Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactDirectoryManager;->haveKnownDirectoryProvidersChanged(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "Directory provider packages have changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v3

    .line 213
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 403
    const/16 v1, 0x88

    .line 402
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    sget-boolean v0, Lcom/android/providers/contacts/ContactDirectoryManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "Ignoring onPackageChanged for self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 406
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 407
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 414
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    .line 415
    return-void
.end method

.method protected providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Directory provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;",
            "Landroid/content/pm/ProviderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 478
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 479
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 478
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 479
    const-string/jumbo v1, "directories"

    .line 478
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 483
    sget-object v2, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 482
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 484
    if-nez v1, :cond_3

    .line 485
    :try_start_1
    const-string/jumbo v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returned a NULL cursor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :cond_0
    if-eqz v1, :cond_1

    .line 544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 530
    :pswitch_0
    :try_start_2
    iput v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    .line 537
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;-><init>()V

    .line 489
    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    .line 490
    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    .line 491
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    .line 492
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 493
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    .line 494
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 495
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    .line 497
    :cond_4
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 498
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 499
    packed-switch v2, :pswitch_data_0

    .line 506
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 507
    const-string/jumbo v5, " - invalid export support flag: "

    .line 506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_5
    :goto_2
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 511
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 512
    packed-switch v2, :pswitch_data_1

    .line 519
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 520
    const-string/jumbo v5, " - invalid shortcut support flag: "

    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_6
    :goto_3
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 525
    packed-switch v2, :pswitch_data_2

    .line 533
    const-string/jumbo v3, "ContactDirectoryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 534
    const-string/jumbo v5, " - invalid photo support flag: "

    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    :goto_4
    :try_start_3
    const-string/jumbo v2, "ContactDirectoryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    if-eqz v1, :cond_1

    .line 544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 503
    :pswitch_1
    :try_start_4
    iput v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 542
    :catchall_0
    move-exception v0

    .line 543
    :goto_5
    if-eqz v1, :cond_7

    .line 544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_7
    throw v0

    .line 516
    :pswitch_2
    :try_start_5
    iput v2, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 542
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    .line 540
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 525
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public scanAllPackages(Z)I
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->areTypeResourceIdsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 p1, 0x1

    .line 222
    const-string/jumbo v0, "ContactDirectoryManager"

    const-string/jumbo v1, "!areTypeResourceIdsValid."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->forceDirectoryRescan()V

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackagesIfNeeded()I

    move-result v0

    return v0
.end method

.method public setDirectoriesForceUpdated(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mDirectoriesForceUpdated:Z

    .line 121
    return-void
.end method
