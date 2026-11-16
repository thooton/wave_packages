.class public Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingExpiryPreferenceActivity.java"


# static fields
.field private static MSG_TYPE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static TYPE_MMS:Ljava/lang/String;

.field private static TYPE_SMS:Ljava/lang/String;


# instance fields
.field private mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

.field private mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

.field private mMsgType:Ljava/lang/String;

.field private mSmsValidityCard1Pref:Landroid/preference/ListPreference;

.field private mSmsValidityCard2Pref:Landroid/preference/ListPreference;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "MessagingExpiryPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->TAG:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "mms"

    sput-object v0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->TYPE_MMS:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "sms"

    sput-object v0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->TYPE_SMS:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "msg_type"

    sput-object v0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMsgType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private createResource()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMsgType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->TYPE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->addPreferencesFromResource(I)V

    .line 77
    const-string/jumbo v0, "pref_key_mms_validity_period_for_sim1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    .line 79
    const-string/jumbo v0, "pref_key_mms_validity_period_for_sim2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    .line 80
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setMmsValidityPeriodPref()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMsgType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->TYPE_SMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->addPreferencesFromResource(I)V

    .line 84
    const-string/jumbo v0, "pref_key_sms_validity_period_for_sim1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    .line 86
    const-string/jumbo v0, "pref_key_sms_validity_period_for_sim2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setSmsValidityPeriodPref()V

    goto :goto_0
.end method

.method private setMmsExpirySummary(I)V
    .locals 2

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    .line 108
    new-instance v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    .line 124
    new-instance v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMmsValidityPeriodPref()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setMmsExpirySummary(I)V

    .line 97
    :cond_0
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setMmsExpirySummary(I)V

    .line 102
    :cond_1
    return-void
.end method

.method private setSmsPreferValiditySummary(I)V
    .locals 2

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    .line 160
    new-instance v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    .line 177
    new-instance v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSmsValidityPeriodPref()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setSmsPreferValiditySummary(I)V

    .line 149
    :cond_0
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setSmsPreferValiditySummary(I)V

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->mMsgType:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->createResource()V

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 218
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 204
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->finish()V

    .line 205
    const/4 v0, 0x1

    return v0

    .line 199
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 213
    return-void
.end method
