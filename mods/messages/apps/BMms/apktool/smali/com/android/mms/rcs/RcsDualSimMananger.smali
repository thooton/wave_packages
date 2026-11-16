.class public Lcom/android/mms/rcs/RcsDualSimMananger;
.super Ljava/lang/Object;
.source "RcsDualSimMananger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentRcsOnlineSlot()I
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getDefaultDataSlotId()I

    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported(I)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefaultSendingConfirmValue(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "default_sending_confirm_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsUseRcsPolicy(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "pref_key_rcs_immediately_message_policy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isContentExceedLimit(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gt v0, p1, :cond_0

    .line 187
    return v2

    .line 189
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string/jumbo v1, "decode error"

    invoke-static {v1, v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return v2
.end method

.method public static setDefaultSendingConfirmValue(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "default_sending_confirm_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public static shouldSendMessageWithRcsPolicy(Landroid/content/Context;IZZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return v2

    .line 123
    :cond_0
    if-eqz p3, :cond_1

    .line 124
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 126
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 127
    invoke-static {}, Lcom/android/mms/rcs/RcsDualSimMananger;->getCurrentRcsOnlineSlot()I

    move-result v1

    .line 128
    if-ne v0, v1, :cond_3

    .line 129
    if-eqz p2, :cond_2

    .line 130
    return v2

    .line 132
    :cond_2
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 134
    :cond_3
    return v2
.end method
