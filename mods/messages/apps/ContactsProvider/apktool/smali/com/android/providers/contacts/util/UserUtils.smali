.class public final Lcom/android/providers/contacts/util/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# static fields
.field public static final VERBOSE_LOGGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "ContactsProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/util/UserUtils;->VERBOSE_LOGGING:Z

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getCorpUserId(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/providers/contacts/util/UserUtils;->getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0
.end method

.method private static getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-static {p0}, Lcom/android/providers/contacts/util/UserUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    .line 58
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 59
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_0

    .line 67
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v2, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_1
    return-object v5
.end method

.method public static getCurrentUserHandle(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/providers/contacts/util/UserUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method
