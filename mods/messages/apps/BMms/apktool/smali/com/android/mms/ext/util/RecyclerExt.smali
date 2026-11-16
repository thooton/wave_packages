.class public abstract Lcom/android/mms/ext/util/RecyclerExt;
.super Ljava/lang/Object;
.source "RecyclerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;,
        Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;
    }
.end annotation


# static fields
.field private static sMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

.field private static sSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;


# instance fields
.field private final KEY_MESSAGES_EXPIRY_DAYS_COUNT:Ljava/lang/String;

.field private final KEY_MESSAGES_MAX_EXPIRY_DAYS_COUNT:Ljava/lang/String;

.field private final KEY_MESSAGES_MIN_EXPIRY_DAYS_COUNT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "KeyMessagesExpiryDaysCount"

    iput-object v0, p0, Lcom/android/mms/ext/util/RecyclerExt;->KEY_MESSAGES_EXPIRY_DAYS_COUNT:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "KeyMessagesMinExpiryDaysCount"

    iput-object v0, p0, Lcom/android/mms/ext/util/RecyclerExt;->KEY_MESSAGES_MIN_EXPIRY_DAYS_COUNT:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "KeyMessagesMaxExpiryDaysCount"

    iput-object v0, p0, Lcom/android/mms/ext/util/RecyclerExt;->KEY_MESSAGES_MAX_EXPIRY_DAYS_COUNT:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static getMmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    invoke-direct {v0}, Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;-><init>()V

    sput-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    return-object v0
.end method

.method public static getSmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    invoke-direct {v0}, Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;-><init>()V

    sput-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/mms/ext/util/RecyclerExt;->sSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "pref_key_auto_delete_by_days"

    .line 91
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isAutoDeleteByDaysEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract deleteExpiredMessages(Landroid/content/Context;I)I
.end method

.method public deleteOldMessages(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/mms/ext/util/RecyclerExt;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Auto delete by days is disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ext/util/RecyclerExt;->getMessagesExpiryDays(Landroid/content/Context;)I

    move-result v0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ext/util/RecyclerExt;->deleteExpiredMessages(Landroid/content/Context;I)I

    move-result v0

    .line 82
    if-lez v0, :cond_1

    .line 83
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recycler: deleted the message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 86
    :cond_1
    return-void
.end method

.method public getMessagesExpiryDays(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 95
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "KeyMessagesExpiryDaysCount"

    .line 97
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMessagesExpiryDaysCount()I

    move-result v2

    .line 96
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessagesMaxExpiryDays(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 121
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "KeyMessagesMaxExpiryDaysCount"

    .line 123
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMessagesMaxExpiryDaysCount()I

    move-result v2

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessagesMinExpiryDays(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 108
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "KeyMessagesMinExpiryDaysCount"

    .line 110
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMessagesMinExpiryDaysCount()I

    move-result v2

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setMessagesExpiryDays(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "KeyMessagesExpiryDaysCount"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    return-void
.end method
