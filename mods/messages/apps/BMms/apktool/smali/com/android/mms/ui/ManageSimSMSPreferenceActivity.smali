.class public Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ManageSimSMSPreferenceActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mManageSim1Pref:Landroid/preference/Preference;

.field private mManageSim2Pref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "ManageSimSMSPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createResource()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->addPreferencesFromResource(I)V

    .line 63
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    .line 64
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->createResource()V

    .line 56
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->finish()V

    .line 90
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string/jumbo v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string/jumbo v1, "slot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimSMSPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
