.class public Lcom/android/providers/contacts/VoicemailPermissions;
.super Ljava/lang/Object;
.source "VoicemailPermissions.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/util/ContactsPermissions;->hasCallerOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/providers/contacts/util/ContactsPermissions;->hasPackagePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public callerHasOwnVoicemailAccess()Z
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public callerHasReadAccess(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telecom/DefaultDialerManager;->isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const-string/jumbo v0, "com.android.voicemail.permission.READ_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public callerHasWriteAccess(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telecom/DefaultDialerManager;->isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    const-string/jumbo v0, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkCallerHasOwnVoicemailAccess()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasOwnVoicemailAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller must have permission: com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public checkCallerHasReadAccess(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasReadAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller must be the default or system dialer, or have the system-only %s permission: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    const-string/jumbo v3, "com.android.voicemail.permission.READ_VOICEMAIL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 77
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public checkCallerHasWriteAccess(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasWriteAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller must be the default or system dialer, or have the system-only %s permission: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 87
    const-string/jumbo v3, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 85
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public packageHasReadAccess(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "com.android.voicemail.permission.READ_VOICEMAIL"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
