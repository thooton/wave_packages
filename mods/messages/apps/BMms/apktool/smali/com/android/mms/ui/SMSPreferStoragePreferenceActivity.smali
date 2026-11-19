.class public Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SMSPreferStoragePreferenceActivity.java"


# instance fields
.field private mSmsStorePref1:Landroid/preference/ListPreference;

.field private mSmsStorePref2:Landroid/preference/ListPreference;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createResource()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->addPreferencesFromResource(I)V

    .line 56
    const-string/jumbo v0, "pref_key_sms_store_card1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    .line 57
    const-string/jumbo v0, "pref_key_sms_store_card2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->setSmsPrefStorageSummary(I)V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->setSmsPrefStorageSummary(I)V

    .line 60
    return-void
.end method

.method private setSmsPrefStorageSummary(I)V
    .locals 2

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    .line 66
    new-instance v1, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity$1;-><init>(Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref1:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    .line 83
    new-instance v1, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity$2;-><init>(Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->mSmsStorePref2:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->createResource()V

    .line 49
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSPreferStoragePreferenceActivity;->finish()V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
