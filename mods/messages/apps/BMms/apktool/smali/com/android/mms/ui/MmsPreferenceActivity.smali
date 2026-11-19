.class public Lcom/android/mms/ui/MmsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MmsPreferenceActivity.java"


# static fields
.field private static MMS_DELIVERY_REPORTS:Ljava/lang/String;

.field private static MMS_PRIORITY:[I

.field private static MMS_READ_REPORTS:Ljava/lang/String;

.field private static MSG_TYPE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static TYPE_MMS:Ljava/lang/String;


# instance fields
.field private mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

.field private mMmsCreationModePref:Landroid/preference/ListPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsDeliveryReportPrefSS:Landroid/preference/SwitchPreference;

.field private mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

.field private mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

.field private mMmsDuringPref:Landroid/preference/SwitchPreference;

.field private mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

.field private mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

.field private mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

.field private mMmsGroupMsgPref:Landroid/preference/SwitchPreference;

.field private mMmsPriorityPreference:Landroid/preference/ListPreference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsReadReportPrefSS:Landroid/preference/SwitchPreference;

.field private mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

.field private mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

.field private mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

.field private mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

.field private mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

.field private mMmsSettingsPref:Landroid/preference/PreferenceScreen;

.field private mMmsValidityPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_PRIORITY:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "MmsPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->TAG:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "mms_read_reports"

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_READ_REPORTS:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "mms_delivery_reports"

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_DELIVERY_REPORTS:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "mms"

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->TYPE_MMS:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "msg_type"

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    .line 158
    const/16 v0, 0x82

    .line 159
    const/16 v1, 0x81

    const/16 v2, 0x80

    .line 158
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_PRIORITY:[I

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createResource()V
    .locals 4

    .prologue
    const v0, 0x7f050003

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-static {p0, v0, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 172
    const-string/jumbo v0, "pref_key_mms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 173
    const-string/jumbo v0, "pref_key_mms_group_mms"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMsgPref:Landroid/preference/SwitchPreference;

    .line 174
    const-string/jumbo v0, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 175
    const-string/jumbo v0, "pref_key_mms_delivery_reports_ss"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSS:Landroid/preference/SwitchPreference;

    .line 177
    const-string/jumbo v0, "pref_key_mms_delivery_reports_card1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 176
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    .line 179
    const-string/jumbo v0, "pref_key_mms_delivery_reports_card2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 178
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    .line 180
    const-string/jumbo v0, "pref_key_mms_read_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 181
    const-string/jumbo v0, "pref_key_mms_read_reports_ss"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSS:Landroid/preference/SwitchPreference;

    .line 183
    const-string/jumbo v0, "pref_key_mms_read_reports_card1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 182
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    .line 185
    const-string/jumbo v0, "pref_key_mms_read_reports_card2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 184
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    .line 186
    const-string/jumbo v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

    .line 187
    const-string/jumbo v0, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDuringPref:Landroid/preference/SwitchPreference;

    .line 192
    const-string/jumbo v0, "pref_key_mms_send_delivery_report"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

    .line 193
    const-string/jumbo v0, "pref_key_mms_send_read_report"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

    .line 195
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryAndReadReports()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_0
    const-string/jumbo v0, "pref_key_mms_expiry"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    .line 205
    const-string/jumbo v0, "pref_key_mms_expiry_no_multi"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    .line 206
    const-string/jumbo v0, "pref_key_mms_expiry_sim1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    .line 207
    const-string/jumbo v0, "pref_key_mms_expiry_sim2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    .line 208
    const-string/jumbo v0, "pref_key_creation_mode"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationModePref:Landroid/preference/ListPreference;

    .line 209
    const-string/jumbo v0, "pref_key_save_attachment"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    .line 210
    const-string/jumbo v0, "pref_key_priority"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/mms/ui/MmsPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSPriorityEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsPriority()V

    .line 229
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsExpiryPref()V

    .line 230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSS:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSS:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMsgPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMsgPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationModePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {p0}, Landroid/os/Environment;->getExternalSDcardDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSaveAsAttachmentPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDuringPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDuringPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_9
    return-void

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 236
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSS:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    .line 240
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_c
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 246
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    .line 245
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_d
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 250
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    .line 249
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    .line 251
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_e
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 254
    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    .line 256
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    .line 258
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 264
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 275
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSS:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_11
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_12
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_13
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 289
    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 297
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub1:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPrefSub2:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method private setMmsExpiryPref()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 356
    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsExpirySummary(I)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    .line 361
    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsExpirySummary(I)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsExpirySummary(I)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private setMmsExpirySummary(I)V
    .locals 2

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    .line 389
    new-instance v1, Lcom/android/mms/ui/MmsPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    .line 388
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryNoMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    .line 406
    new-instance v1, Lcom/android/mms/ui/MmsPreferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    .line 422
    new-instance v1, Lcom/android/mms/ui/MmsPreferenceActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setMmsPriority()V
    .locals 3

    .prologue
    .line 331
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriorityPreference:Landroid/preference/ListPreference;

    .line 335
    new-instance v2, Lcom/android/mms/ui/MmsPreferenceActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;Landroid/content/SharedPreferences$Editor;)V

    .line 334
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    .line 507
    const-class v2, Lcom/android/mms/transaction/TransactionService;

    const/4 v3, 0x0

    .line 506
    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 508
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->createResource()V

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 512
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 513
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    return v0

    .line 453
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->finish()V

    .line 454
    const/4 v0, 0x1

    return v0

    .line 448
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    sget-object v1, Lcom/android/mms/ui/MmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_DELIVERY_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 499
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    sget-object v1, Lcom/android/mms/ui/MmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/MmsPreferenceActivity;->MMS_READ_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->startMmsDownload()V

    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsValidityPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    sget-object v1, Lcom/android/mms/ui/MmsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/MmsPreferenceActivity;->TYPE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_5

    .line 483
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 485
    const-string/jumbo v1, "pref_key_mms_send_delivery_report"

    .line 486
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 485
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 490
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 492
    const-string/jumbo v1, "pref_key_mms_send_read_report"

    .line 493
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSendReadReportPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 492
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 444
    return-void
.end method
