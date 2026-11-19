.class public Lcom/android/mms/ui/SmsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SmsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsPreferenceActivity$1;,
        Lcom/android/mms/ui/SmsPreferenceActivity$MyAlertDialogFragment;,
        Lcom/android/mms/ui/SmsPreferenceActivity$MyEditDialogFragment;,
        Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;
    }
.end annotation


# static fields
.field private static MSG_TYPE:Ljava/lang/String;

.field private static SMS_CENTER_NUMBER_SIM1:Ljava/lang/String;

.field private static SMS_CENTER_NUMBER_SIM2:Ljava/lang/String;

.field private static SMS_DELIVERY_REPORTS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static TYPE_SMS:Ljava/lang/String;

.field private static mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;


# instance fields
.field private mManageSim1Pref:Landroid/preference/Preference;

.field private mManageSim2Pref:Landroid/preference/Preference;

.field private mManageSimNoMultiPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsCenterNumber:Landroid/preference/Preference;

.field private mSmsCenterNumberSS:Landroid/preference/Preference;

.field private mSmsCenterNumberSim1:Landroid/preference/Preference;

.field private mSmsCenterNumberSim2:Landroid/preference/Preference;

.field private mSmsDeliveryReportNoMultiPref:Landroid/preference/Preference;

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field private mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

.field private mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

.field private mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

.field private mSmsSignaturePref:Landroid/preference/SwitchPreference;

.field private mSmsStorePref1:Landroid/preference/ListPreference;

.field private mSmsStorePref2:Landroid/preference/ListPreference;

.field private mSmsStorePrefDualSim:Landroid/preference/Preference;

.field private mSmsStorePrefSingleSim:Landroid/preference/ListPreference;

.field private mSmsTemplatePref:Landroid/preference/Preference;

.field private mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

.field private mSmsValidityPref:Landroid/preference/Preference;

.field private mSmsValiditysim1Pref:Landroid/preference/ListPreference;

.field private mSmsValiditysim2Pref:Landroid/preference/ListPreference;

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

.field private mWapPushPref:Landroid/preference/SwitchPreference;

.field private prefSmsSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->adjustSMSC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/SmsPreferenceActivity;->putSmscIntoPref(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/SmsPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->showToast(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSMSCPref()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/SmsPreferenceActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSmscFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/SmsPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSmscFromPreference(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "SmsPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->TAG:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_CENTER_NUMBER_SIM1:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_CENTER_NUMBER_SIM2:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "sms_delivery_reports"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_DELIVERY_REPORTS:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "sms"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->TYPE_SMS:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "msg_type"

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Lcom/android/mms/ui/SmsPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$1;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method private adjustSMSC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 688
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

    .line 689
    return-object v0
.end method

.method private createResource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 159
    const-string/jumbo v0, "pref_key_sms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 160
    const-string/jumbo v0, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 162
    const-string/jumbo v0, "pref_key_sms_delivery_reports_no_multi"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportNoMultiPref:Landroid/preference/Preference;

    .line 164
    const-string/jumbo v0, "pref_key_sms_delivery_reports_sim1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 163
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    .line 166
    const-string/jumbo v0, "pref_key_sms_delivery_reports_sim2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 165
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    .line 167
    const-string/jumbo v0, "pref_key_message_template"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsTemplatePref:Landroid/preference/Preference;

    .line 168
    const-string/jumbo v0, "pref_key_enable_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignaturePref:Landroid/preference/SwitchPreference;

    .line 169
    const-string/jumbo v0, "pref_key_edit_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    .line 170
    const-string/jumbo v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 171
    const-string/jumbo v0, "pref_key_manage_sim_messages_no_multi"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimNoMultiPref:Landroid/preference/Preference;

    .line 172
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    .line 173
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    .line 174
    const-string/jumbo v0, "pref_key_sms_validity_period"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    .line 175
    const-string/jumbo v0, "pref_key_sms_validity_period_sim1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    .line 176
    const-string/jumbo v0, "pref_key_sms_validity_period_sim2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    .line 178
    const-string/jumbo v0, "pref_key_sms_validity_period_no_multi"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    .line 179
    const-string/jumbo v0, "pref_key_enable_wap_push"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mWapPushPref:Landroid/preference/SwitchPreference;

    .line 180
    const-string/jumbo v0, "pref_key_sms_center_number"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    .line 181
    const-string/jumbo v0, "pref_key_sms_center_number_no_multi"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    .line 182
    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_CENTER_NUMBER_SIM1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim1:Landroid/preference/Preference;

    .line 183
    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_CENTER_NUMBER_SIM2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim2:Landroid/preference/Preference;

    .line 184
    const-string/jumbo v0, "pref_key_sms_store_single"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefSingleSim:Landroid/preference/ListPreference;

    .line 185
    const-string/jumbo v0, "pref_key_sms_store_dual"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    .line 186
    const-string/jumbo v0, "pref_key_sms_store_card1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    .line 187
    const-string/jumbo v0, "pref_key_sms_store_card2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsValidityPeriodPref()V

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setMessagePriorityPref()V

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->showSmscPref()V

    .line 191
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefSingleSim:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 265
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 264
    if-eqz v0, :cond_d

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignaturePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_2
    return-void

    .line 196
    :cond_3
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 196
    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 200
    :cond_4
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 225
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    .line 228
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_9
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    .line 233
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_a
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 239
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    .line 238
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    .line 240
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_b
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 243
    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 246
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    .line 245
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    .line 247
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim1Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportSim2Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportNoMultiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 269
    :cond_d
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_e

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 273
    :cond_e
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 274
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 273
    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPrefStorageSummary(I)V

    goto/16 :goto_2

    .line 278
    :cond_f
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasIccCard(I)Z

    move-result v0

    .line 278
    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPrefStorageSummary(I)V

    goto/16 :goto_2

    .line 285
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefSingleSim:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 292
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefSingleSim:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method private getSMSCDialogTitle(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const v0, 0x7f0702aa

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 416
    :cond_0
    const v0, 0x7f0702a9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSMSCPrefOnClickListener(I)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/android/mms/ui/SmsPreferenceActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity$4;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;I)V

    return-object v0
.end method

.method private isAirPlaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 836
    const-string/jumbo v2, "airplane_mode_on"

    .line 835
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
    .line 816
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 818
    const-string/jumbo v1, "pref_key_default_smsc"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 820
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 822
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 823
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    const-string/jumbo v0, "smsc"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string/jumbo v2, "userobj"

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 827
    iput-object v1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 829
    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 832
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 865
    new-instance v0, Landroid/content/IntentFilter;

    .line 866
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 865
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 867
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 869
    return-void
.end method

.method private setMessagePriorityPref()V
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    const-string/jumbo v0, "pref_key_sms_cdma_priority"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 614
    :cond_0
    return-void
.end method

.method private setSMSCPrefState(IZ)V
    .locals 5

    .prologue
    const v4, 0x7f09003e

    const/4 v3, 0x1

    .line 465
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    if-eqz p2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSmscFromPreference(I)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->getSmscFromSub(Landroid/content/Context;ILandroid/os/Message;)V

    goto :goto_0

    .line 479
    :cond_2
    if-eqz p2, :cond_4

    .line 480
    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->TAG:Ljava/lang/String;

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

    .line 481
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSmscFromPreference(I)V

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 484
    :cond_3
    sget-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 486
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 487
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->getSmscFromSub(Landroid/content/Context;ILandroid/os/Message;)V

    goto :goto_1

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setSmsPrefStorageSummary(I)V
    .locals 2

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    .line 307
    new-instance v1, Lcom/android/mms/ui/SmsPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$2;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    .line 324
    new-instance v1, Lcom/android/mms/ui/SmsPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$3;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSmsPreferValiditySummary(I)V
    .locals 2

    .prologue
    .line 550
    packed-switch p1, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    .line 553
    new-instance v1, Lcom/android/mms/ui/SmsPreferenceActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$5;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 552
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 570
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    .line 571
    new-instance v1, Lcom/android/mms/ui/SmsPreferenceActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$6;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 570
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    .line 588
    new-instance v1, Lcom/android/mms/ui/SmsPreferenceActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$7;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 587
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSmsValidityPeriodPref()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 520
    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPreferValiditySummary(I)V

    goto :goto_0

    .line 525
    :cond_1
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    .line 525
    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 529
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPreferValiditySummary(I)V

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 539
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPreferValiditySummary(I)V

    goto :goto_0

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValiditysim2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private showSmscPref()V
    .locals 8

    .prologue
    const v7, 0x7f090036

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 368
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim2:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 378
    :goto_0
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 379
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 411
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSMSCPref()V

    .line 412
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->getSMSCPrefOnClickListener(I)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move v2, v1

    .line 388
    :goto_2
    if-ge v2, v3, :cond_0

    .line 389
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 390
    invoke-direct {p0, v3, v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->getSMSCDialogTitle(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 400
    if-eqz v0, :cond_5

    array-length v5, v0

    if-eqz v5, :cond_5

    .line 401
    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 403
    :goto_4
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 388
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 394
    :cond_4
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getSMSCPrefOnClickListener(I)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 400
    goto :goto_4

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private showToast(I)V
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 841
    return-void
.end method

.method private updateSMSCPref()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 421
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 423
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 425
    invoke-direct {p0, v1, v6}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSMSCPrefState(IZ)V

    .line 461
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 432
    :cond_2
    return-void

    .line 434
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    move v4, v1

    move v0, v1

    .line 436
    :goto_1
    if-ge v4, v5, :cond_7

    .line 438
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 439
    if-eqz v2, :cond_4

    array-length v3, v2

    if-eqz v3, :cond_4

    .line 440
    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v2

    move v3, v2

    .line 442
    :goto_2
    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 443
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v2

    .line 442
    if-eqz v2, :cond_a

    .line 444
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 446
    :goto_3
    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 447
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v0

    .line 446
    :goto_4
    invoke-direct {p0, v4, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setSMSCPrefState(IZ)V

    .line 436
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v1

    .line 439
    goto :goto_2

    :cond_5
    move v2, v0

    .line 443
    goto :goto_3

    :cond_6
    move v0, v1

    .line 446
    goto :goto_4

    .line 449
    :cond_7
    if-nez v0, :cond_8

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 452
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 458
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    move v2, v0

    goto :goto_3
.end method

.method private updateSignatureStatus()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignaturePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 350
    return-void
.end method

.method private updateSmscFromBundle(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 794
    if-eqz p1, :cond_1

    .line 795
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 796
    if-eq v0, v1, :cond_1

    .line 798
    const-string/jumbo v1, "smsc"

    .line 797
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    if-nez v1, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    sget-object v2, Lcom/android/mms/ui/SmsPreferenceActivity;->TAG:Ljava/lang/String;

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

    .line 803
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 804
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v3

    if-nez v3, :cond_2

    .line 805
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 807
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSmscFromPreference(I)V
    .locals 3

    .prologue
    .line 500
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    const-string/jumbo v1, "pref_key_default_smsc"

    const-string/jumbo v2, ""

    .line 500
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    new-instance v0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    sput-object v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mHandler:Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;

    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->createResource()V

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 930
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 931
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 873
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 881
    const/4 v0, 0x0

    return v0

    .line 878
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->finish()V

    .line 879
    const/4 v0, 0x1

    return v0

    .line 873
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    sget-object v1, Lcom/android/mms/ui/SmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/SmsPreferenceActivity;->SMS_DELIVERY_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 916
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsTemplatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessageTemplate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSignaturePref:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_3

    .line 894
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSignatureStatus()V

    goto :goto_0

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 896
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimNoMultiPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 899
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_6

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    const-string/jumbo v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 903
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 904
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    const-string/jumbo v1, "slot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 907
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 908
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 909
    sget-object v1, Lcom/android/mms/ui/SmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/SmsPreferenceActivity;->TYPE_SMS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 911
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 912
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 913
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsStorePrefDualSim:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 914
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSignatureStatus()V

    .line 847
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->updateSMSCPref()V

    .line 848
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->registerListeners()V

    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim1:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim2:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 859
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->prefSmsSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsCenterNumberSim2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 861
    :cond_3
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 862
    return-void
.end method
