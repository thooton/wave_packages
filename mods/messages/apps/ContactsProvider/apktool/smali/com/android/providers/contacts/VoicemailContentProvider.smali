.class public Lcom/android/providers/contacts/VoicemailContentProvider;
.super Landroid/content/ContentProvider;
.source "VoicemailContentProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

.field public static final VERBOSE_LOGGING:Z


# instance fields
.field private mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

.field private mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

.field private mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;


# direct methods
.method private static synthetic -getcom-android-providers-contacts-VoicemailUriTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->NO_MATCH:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/providers/contacts/VoicemailContentProvider;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "VoicemailProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasWriteAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/SecurityException;

    .line 436
    const-string/jumbo v1, "Provider %s does not have %s permission.\nPlease set query parameter \'%s\' in the URI.\nURI: %s"

    .line 435
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 438
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getInjectedCallingPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 439
    const-string/jumbo v3, "source_package"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 435
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getInjectedCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 441
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    :cond_1
    return-void
.end method

.method private final checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 414
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const-string/jumbo v0, "Permission denied for URI: %s\n. Package %s cannot perform this operation for %s. Requires %s permission."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 417
    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 418
    const-string/jumbo v2, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 415
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    return-void
.end method

.method private checkPermissionsAndCreateUriData(Landroid/net/Uri;Z)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2

    .prologue
    .line 387
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 388
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->hasReadWritePermission(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasOwnVoicemailAccess()V

    .line 390
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 392
    :cond_0
    return-object v0
.end method

.method private checkPermissionsAndCreateUriDataForRead(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    invoke-static {v0, p1, v2}, Lcom/android/providers/contacts/util/ContactsPermissions;->hasCallerUriPermission(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasReadAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    return-object v0

    .line 379
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;Z)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    return-object v0
.end method

.method private varargs checkPermissionsAndCreateUriDataForWrite(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;Z)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 402
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 403
    invoke-direct {p0, v1, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-object v1
.end method

.method private checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/SecurityException;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source_package in URI was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, " but doesn\'t match source_package in ContentValues which was "

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    return-void
.end method

.method private getPackageRestrictionClause(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->hasReadWritePermission(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_0
    const-string/jumbo v0, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getInjectedCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider;->-getcom-android-providers-contacts-VoicemailUriTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUriType()Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible, all cases are covered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    return-object v0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    return-object v0

    .line 237
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid uri type for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasReadWritePermission(Z)Z
    .locals 2

    .prologue
    .line 472
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasReadAccess(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasWriteAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeStalePackages()V
    .locals 7

    .prologue
    .line 495
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 496
    const-string/jumbo v0, "VoicemailProvider"

    const-string/jumbo v1, "scanStalePackages start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    invoke-interface {v0}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getSourcePackages()Landroid/util/ArraySet;

    move-result-object v3

    .line 503
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    invoke-interface {v0}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getSourcePackages()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 506
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_4

    .line 507
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/providers/contacts/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 509
    sget-boolean v1, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    .line 510
    const-string/jumbo v5, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_3

    const-string/jumbo v1, " installed"

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    if-nez v4, :cond_2

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->removeBySourcePackage(Ljava/lang/String;)V

    .line 506
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 510
    :cond_3
    const-string/jumbo v1, " removed"

    goto :goto_1

    .line 517
    :cond_4
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 518
    const-string/jumbo v0, "VoicemailProvider"

    const-string/jumbo v1, "scanStalePackages finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_5
    return-void
.end method


# virtual methods
.method public checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 327
    const-string/jumbo v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    const-string/jumbo v1, "source_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasWriteAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getInjectedCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 335
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    :cond_1
    return-void

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getInjectedCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method context()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "  selection=["

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "]  args="

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string/jumbo v2, " CPID="

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string/jumbo v2, " User="

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    new-array v0, v3, [Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForWrite(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v1, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 201
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1, p3}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method getInjectedCallingPackage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 448
    invoke-super {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  values=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " CPID="

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForWrite(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/16 v3, 0x34

    const/4 v6, 0x4

    .line 76
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    const-string/jumbo v2, " user="

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const-string/jumbo v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string/jumbo v0, "ContactsPerf"

    const-string/jumbo v1, "VoicemailContentProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v3, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->setAppOps(II)V

    .line 89
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 90
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentTable;

    const-string/jumbo v1, "calls"

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v5

    move-object v4, p0

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/providers/contacts/CallLogDatabaseHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 92
    new-instance v0, Lcom/android/providers/contacts/VoicemailStatusTable;

    const-string/jumbo v1, "voicemail_status"

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v3

    .line 92
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/providers/contacts/VoicemailStatusTable;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/providers/contacts/CallLogDatabaseHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 95
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentProvider$1;

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider$1;-><init>(Lcom/android/providers/contacts/VoicemailContentProvider;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    .line 102
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->scheduleScanStalePackages()V

    .line 104
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsPackageMonitor;->start(Landroid/content/Context;)V

    .line 106
    const-string/jumbo v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string/jumbo v0, "ContactsPerf"

    const-string/jumbo v1, "VoicemailContentProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 209
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForRead(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 215
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    .line 219
    sget-boolean v2, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 220
    const-string/jumbo v2, "VoicemailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openFile uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string/jumbo v3, " CPID="

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string/jumbo v3, " User="

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v3

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-object v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForWrite(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    sget-boolean v1, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_2

    .line 220
    const-string/jumbo v1, "VoicemailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFile uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    const-string/jumbo v3, " CPID="

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    const-string/jumbo v3, " User="

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v3

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    throw v0
.end method

.method performBackgroundTask(ILjava/lang/Object;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 486
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->removeStalePackages()V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "  selection=["

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "]  args="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "  order=["

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "] CPID="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " User="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForRead(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 171
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public removeBySourcePackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-static {p1}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    invoke-static {p1}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method scheduleScanStalePackages()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->scheduleTask(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method scheduleTask(ILjava/lang/Object;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsTaskScheduler;->scheduleTask(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    sget-boolean v0, Lcom/android/providers/contacts/VoicemailContentProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "VoicemailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "  selection=["

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "]  args="

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string/jumbo v2, "  values=["

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string/jumbo v2, "] CPID="

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, " User="

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    aput-object p2, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForWrite(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v1, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 186
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, p2, v1, p4}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
