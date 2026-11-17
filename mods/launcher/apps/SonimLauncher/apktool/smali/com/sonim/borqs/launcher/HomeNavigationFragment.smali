.class public Lcom/sonim/borqs/launcher/HomeNavigationFragment;
.super Landroid/preference/PreferenceFragment;
.source "HomeNavigationFragment.java"


# static fields
.field private static mDpadCenterPrefKey:Ljava/lang/String;

.field private static mDpadDownPrefKey:Ljava/lang/String;

.field private static mDpadUpPrefKey:Ljava/lang/String;


# instance fields
.field public mCenterKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

.field public mDownKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field public mUpKeyPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadUpPrefKey:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadDownPrefKey:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadCenterPrefKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    return-void
.end method

.method private updateKeyPreferenceSummary()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "com.sonim.borqs.launcher.prefs"

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v2, "HomeNavigationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Up Key appName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mUpKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    sget-object v1, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    const-string/jumbo v2, "HomeNavigationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Down key appName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDownKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    sget-object v1, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    const-string/jumbo v1, "HomeNavigationFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Center key appName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mCenterKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 137
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 133
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v2, "HomeNavigationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->addPreferencesFromResource(I)V

    .line 58
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadUpPrefKey:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 59
    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mUpKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 62
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadDownPrefKey:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 63
    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDownKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 66
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadCenterPrefKey:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 67
    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->mCenterKeyPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/HomeNavigationFragment;->updateKeyPreferenceSummary()V

    .line 78
    return-void
.end method
