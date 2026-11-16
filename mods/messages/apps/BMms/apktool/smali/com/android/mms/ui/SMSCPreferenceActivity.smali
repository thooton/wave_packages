.class public Lcom/android/mms/ui/SMSCPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SMSCPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SMSCPreferenceActivity$1;,
        Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;,
        Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;,
        Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mHandler:Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmscPrefCate:Landroid/preference/PreferenceCategory;

.field private mSmscPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mHandler:Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SMSCPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->adjustSMSC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/SMSCPreferenceActivity;->putSmscIntoPref(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/SMSCPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->showToast(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/SMSCPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSMSCPref()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/SMSCPreferenceActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSmscFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/SMSCPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSmscFromPreference(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "SMSCPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->TAG:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mHandler:Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/mms/ui/SMSCPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$1;-><init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void
.end method

.method private adjustSMSC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method private createResource()V
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->addPreferencesFromResource(I)V

    .line 123
    const-string/jumbo v0, "pref_key_message_smsc"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    .line 124
    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->showSmscPref()V

    .line 125
    return-void
.end method

.method private getSMSCDialogTitle(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0702ab

    .line 167
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const v0, 0x7f0702a9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAirPlaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 436
    const-string/jumbo v2, "airplane_mode_on"

    .line 435
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static putSmscIntoPref(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 416
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "pref_key_default_smsc"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 423
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string/jumbo v0, "smsc"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v2, "userobj"

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 427
    iput-object v1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 432
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Landroid/content/IntentFilter;

    .line 453
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 452
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    return-void
.end method

.method private setSMSCPrefState(IZ)V
    .locals 3

    .prologue
    .line 192
    if-eqz p2, :cond_1

    .line 193
    sget-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get SMSC from sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSmscFromPreference(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mHandler:Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    .line 198
    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->getSmscFromSub(Landroid/content/Context;ILandroid/os/Message;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showSmscPref()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move v3, v1

    .line 129
    :goto_0
    if-ge v3, v4, :cond_4

    .line 130
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v4, v3}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getSMSCDialogTitle(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 150
    :goto_2
    if-ge v2, v4, :cond_3

    .line 152
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    array-length v6, v0

    if-eqz v6, :cond_1

    .line 154
    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 156
    :goto_3
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 136
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SMSCPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$2;-><init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 153
    goto :goto_3

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 129
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 163
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSMSCPref()V

    .line 164
    return-void
.end method

.method private showToast(I)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 441
    return-void
.end method

.method private updateSMSCPref()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move v2, v1

    .line 178
    :goto_0
    if-ge v2, v3, :cond_4

    .line 180
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 181
    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_2

    .line 182
    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 185
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v0

    .line 184
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->setSMSCPrefState(IZ)V

    .line 178
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 181
    goto :goto_1

    :cond_3
    move v0, v1

    .line 185
    goto :goto_2

    .line 188
    :cond_4
    return-void
.end method

.method private updateSmscFromBundle(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    if-eq v0, v1, :cond_1

    .line 402
    const-string/jumbo v1, "smsc"

    .line 401
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    if-nez v1, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    sget-object v2, Lcom/android/mms/ui/SMSCPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update SMSC: sub= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SMSC= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 408
    iget-object v3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    :cond_1
    return-void
.end method

.method private updateSmscFromPreference(I)V
    .locals 3

    .prologue
    .line 211
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "pref_key_default_smsc"

    const-string/jumbo v2, ""

    .line 211
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;-><init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V

    sput-object v0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mHandler:Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->createResource()V

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 475
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    const/4 v0, 0x0

    return v0

    .line 465
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->finish()V

    .line 466
    const/4 v0, 0x1

    return v0

    .line 460
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->updateSMSCPref()V

    .line 447
    invoke-direct {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->registerListeners()V

    .line 448
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 449
    return-void
.end method
