.class public Lcom/android/providers/contacts/util/ContactsPermissions;
.super Ljava/lang/Object;
.source "ContactsPermissions.java"


# static fields
.field public static ALLOW_SELF_CALL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/contacts/util/ContactsPermissions;->ALLOW_SELF_CALL:Z

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static enforceCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/providers/contacts/util/ContactsPermissions;->hasCallerOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller must have the %s permission."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method

.method public static hasCallerOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    sget-boolean v2, Lcom/android/providers/contacts/util/ContactsPermissions;->ALLOW_SELF_CALL:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static hasCallerUriPermission(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    sget-boolean v2, Lcom/android/providers/contacts/util/ContactsPermissions;->ALLOW_SELF_CALL:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static hasPackagePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    sget-boolean v2, Lcom/android/providers/contacts/util/ContactsPermissions;->ALLOW_SELF_CALL:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
