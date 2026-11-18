.class public Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;
.super Ljava/lang/Object;
.source "EnterprisePolicyGuard.java"


# static fields
.field private static final VERBOSE_LOGGING:Z

.field private static final sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    sput-boolean v0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->VERBOSE_LOGGING:Z

    .line 43
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    sput-object v0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mContext:Landroid/content/Context;

    .line 50
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 51
    return-void
.end method

.method private static isBluetoothContactSharing(I)Z
    .locals 1

    .prologue
    .line 197
    sparse-switch p0, :sswitch_data_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 200
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0xbba -> :sswitch_0
        0x3a99 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isCallerIdGuarded(I)Z
    .locals 1

    .prologue
    .line 165
    sparse-switch p0, :sswitch_data_0

    .line 175
    const/4 v0, 0x0

    return v0

    .line 173
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f1 -> :sswitch_0
        0x3f4 -> :sswitch_0
        0xbbf -> :sswitch_0
        0xfa0 -> :sswitch_0
        0x4269 -> :sswitch_0
        0x426a -> :sswitch_0
        0x5dc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isContactsSearchGuarded(I)Z
    .locals 1

    .prologue
    .line 180
    sparse-switch p0, :sswitch_data_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 190
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3f1 -> :sswitch_0
        0x3f4 -> :sswitch_0
        0xbbc -> :sswitch_0
        0xbc0 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0x4269 -> :sswitch_0
        0x426a -> :sswitch_0
        0x5dc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isDirectorySupported(I)Z
    .locals 1

    .prologue
    .line 133
    sparse-switch p0, :sswitch_data_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 141
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0xbbc -> :sswitch_0
        0xbbf -> :sswitch_0
        0xbc0 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xfa0 -> :sswitch_0
        0x5dc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isUriWhitelisted(I)Z
    .locals 1

    .prologue
    .line 105
    sparse-switch p1, :sswitch_data_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 109
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f7 -> :sswitch_0
        0x3f8 -> :sswitch_0
        0x4a3c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidEnterpriseUri(I)Z
    .locals 1

    .prologue
    .line 148
    sparse-switch p0, :sswitch_data_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 158
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x405 -> :sswitch_0
        0xbc9 -> :sswitch_0
        0xbca -> :sswitch_0
        0xbcb -> :sswitch_0
        0xbcc -> :sswitch_0
        0xfa1 -> :sswitch_0
        0x426b -> :sswitch_0
        0x426c -> :sswitch_0
        0x5dc0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected isContactRemoteSearchUserSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 209
    const-string/jumbo v3, "managed_profile_contact_remote_search"

    .line 207
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCrossProfileAllowed(Landroid/net/Uri;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 61
    new-instance v0, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 62
    const/4 v2, -0x1

    if-eq v4, v2, :cond_0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    return v1

    .line 66
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isUriWhitelisted(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    return v3

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    .line 72
    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    .line 74
    iget-object v2, p0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isContactRemoteSearchUserSettingEnabled()Z

    move-result v0

    .line 77
    const-string/jumbo v7, "directory"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    sget-boolean v8, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_3

    .line 80
    const-string/jumbo v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCallerIdEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isContactsSearchPolicyEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isBluetoothContactSharingEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isContactRemoteSearchUserEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    if-eqz v7, :cond_5

    .line 90
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 91
    invoke-static {v8, v9}, Landroid/provider/ContactsContract$Directory;->isRemoteDirectoryId(J)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isCrossProfileDirectorySupported(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 91
    if-eqz v0, :cond_5

    .line 94
    return v1

    :cond_4
    move v0, v1

    .line 92
    goto :goto_0

    .line 99
    :cond_5
    invoke-static {v4}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isCallerIdGuarded(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v5, :cond_9

    .line 100
    :cond_6
    invoke-static {v4}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isContactsSearchGuarded(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    if-nez v6, :cond_9

    .line 101
    :cond_7
    invoke-static {v4}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isBluetoothContactSharing(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    .line 99
    :cond_8
    :goto_1
    return v1

    :cond_9
    move v1, v3

    goto :goto_1
.end method

.method protected isCrossProfileDirectorySupported(Landroid/net/Uri;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 124
    invoke-static {v0}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isDirectorySupported(I)Z

    move-result v0

    return v0
.end method

.method public isValidEnterpriseUri(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/android/providers/contacts/enterprise/EnterprisePolicyGuard;->isValidEnterpriseUri(I)Z

    move-result v0

    return v0
.end method
