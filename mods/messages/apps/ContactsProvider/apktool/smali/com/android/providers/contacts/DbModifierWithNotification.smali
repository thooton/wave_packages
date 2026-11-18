.class public Lcom/android/providers/contacts/DbModifierWithNotification;
.super Ljava/lang/Object;
.source "DbModifierWithNotification.java"

# interfaces
.implements Lcom/android/providers/contacts/DatabaseModifier;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mInsertHelper:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mIsCallsTable:Z

.field private final mTableName:Ljava/lang/String;

.field private final mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "source_package"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 62
    sput-object v0, Lcom/android/providers/contacts/DbModifierWithNotification;->PROJECTION:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    iput-object p3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mInsertHelper:Landroid/database/DatabaseUtils$InsertHelper;

    .line 93
    iput-object p4, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    const-string/jumbo v1, "voicemail_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    :goto_0
    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    .line 97
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 98
    return-void

    .line 95
    :cond_0
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 379
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 381
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 382
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 387
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getBroadcastReceiverComponents(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 353
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 354
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    return-object v1
.end method

.method private getCallingPackages()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 365
    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 284
    const-string/jumbo v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string/jumbo v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-object v0
.end method

.method private getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 265
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mTableName:Ljava/lang/String;

    sget-object v2, Lcom/android/providers/contacts/DbModifierWithNotification;->PROJECTION:[Ljava/lang/String;

    .line 267
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "source_package IS NOT NULL"

    aput-object v4, v3, v9

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    .line 266
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 269
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 273
    return-object v8
.end method

.method private getTimeMillis()J
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/android/providers/contacts/CallLogProvider;->getTimeForTestMillis()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 394
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/CallLogProvider;->getTimeForTestMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private isSelfModifyingOrInternal(Ljava/util/Set;)Z
    .locals 4
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getCallingPackages()Ljava/util/Collection;

    move-result-object v2

    .line 297
    if-nez v2, :cond_0

    .line 298
    return v1

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 303
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private notifyCallLogChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.action.CALL_LOG_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.calllogbackup"

    .line 139
    const-string/jumbo v3, "com.android.calllogbackup.CallLogChangeReceiver"

    .line 138
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    :cond_0
    return-void
.end method

.method private varargs notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 312
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getCallingPackages()Ljava/util/Collection;

    move-result-object v4

    .line 314
    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v5, v0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, p3, v3

    .line 316
    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 318
    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getBroadcastReceiverComponents(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 321
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 323
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-virtual {v2, v9}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasReadAccess(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 321
    if-nez v2, :cond_0

    .line 327
    :cond_1
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v9, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    .line 330
    const-string/jumbo v2, "com.android.voicemail.extra.SELF_CHANGE"

    .line 331
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 330
    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 335
    :goto_2
    iget-object v10, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v10, "DbModifierWithNotify"

    const-string/jumbo v11, "Sent intent. act:%s, url:%s, comp:%s, perm:%s, self_change:%s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    .line 337
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 338
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    aput-object v1, v12, v13

    const/4 v1, 0x3

    aput-object v2, v12, v1

    .line 339
    const-string/jumbo v1, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    const-string/jumbo v1, "com.android.voicemail.extra.SELF_CHANGE"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 339
    :goto_3
    const/4 v2, 0x4

    aput-object v1, v12, v2

    .line 336
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    :cond_3
    const-string/jumbo v2, "com.android.voicemail.permission.READ_VOICEMAIL"

    goto :goto_2

    .line 341
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 314
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 344
    :cond_6
    return-void
.end method

.method private notifyVoicemailChangeOnInsert(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    const-string/jumbo v1, "android.intent.action.NEW_VOICEMAIL"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v3

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 152
    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v2

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLastModified(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    const-string/jumbo v1, "last_modified"

    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 221
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "deleted == 0"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v1, p1, v0, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 228
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 239
    :goto_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/DbModifierWithNotification;->isSelfModifyingOrInternal(Ljava/util/Set;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 240
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 241
    const-string/jumbo v5, "dirty"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string/jumbo v5, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string/jumbo v5, "last_modified"

    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    iget-object v5, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 249
    :goto_1
    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v5, "android.intent.action.PROVIDER_CHANGED"

    aput-object v5, v1, v2

    invoke-direct {p0, v0, v4, v1}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 252
    :cond_0
    if-lez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 255
    :cond_1
    return v3

    :cond_2
    move v0, v2

    .line 228
    goto :goto_0

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 120
    iget-boolean v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "last_modified"

    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mInsertHelper:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 124
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 125
    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChangeOnInsert(Landroid/net/Uri;Ljava/util/Set;)V

    .line 128
    :cond_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 131
    :cond_2
    return-wide v2
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 103
    iget-boolean v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "last_modified"

    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 107
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChangeOnInsert(Landroid/net/Uri;Ljava/util/Set;)V

    .line 111
    :cond_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 114
    :cond_2
    return-wide v2
.end method

.method public update(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0, p4, p5}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 160
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getModifiedPackages(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 165
    :goto_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v3, :cond_9

    .line 166
    const-string/jumbo v3, "deleted"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    const-string/jumbo v3, "deleted"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 166
    if-eqz v3, :cond_4

    .line 168
    const-string/jumbo v3, "last_modified"

    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->getTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    :goto_1
    if-eqz v0, :cond_9

    .line 178
    const-string/jumbo v3, "dirty"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_6

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    .line 185
    :goto_2
    const-string/jumbo v5, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    if-nez v3, :cond_8

    const-string/jumbo v3, "is_read"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 188
    const-string/jumbo v3, "is_read"

    .line 187
    invoke-static {p3, v3}, Lcom/android/providers/contacts/DbModifierWithNotification;->getAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 190
    const-string/jumbo v3, "new"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 191
    const-string/jumbo v3, "new"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v3, v1

    .line 198
    :goto_3
    iget-object v5, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 199
    if-lez v5, :cond_0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v6, "android.intent.action.PROVIDER_CHANGED"

    aput-object v6, v1, v2

    invoke-direct {p0, v0, v4, v1}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyVoicemailChange(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 202
    :cond_0
    if-lez v5, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mIsCallsTable:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->notifyCallLogChange()V

    .line 205
    :cond_1
    if-eqz v3, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.NEW_VOICEMAIL"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    const-string/jumbo v2, "com.android.voicemail.permission.READ_VOICEMAIL"

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 213
    :cond_2
    return v5

    :cond_3
    move v0, v2

    .line 162
    goto/16 :goto_0

    .line 170
    :cond_4
    invoke-direct {p0, p2, p4, p5}, Lcom/android/providers/contacts/DbModifierWithNotification;->updateLastModified(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v3, v1

    .line 181
    goto :goto_2

    .line 183
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/DbModifierWithNotification;->isSelfModifyingOrInternal(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v1

    goto :goto_2

    :cond_8
    move v3, v2

    .line 188
    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_3
.end method
