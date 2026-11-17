.class public Lcom/sonim/borqs/launcher/AppConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppConfigReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private appInfoCenterKey:Ljava/lang/String;

.field private appInfoDownKey:Ljava/lang/String;

.field private appInfoUpKey:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string/jumbo v0, "SonimLauncher AppConfig"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoUpKey:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoDownKey:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoCenterKey:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    const-string/jumbo v0, "com.sonim.borqs.launcher.prefs"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive Borqs Launcher: AppConfigReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    const-string/jumbo v3, " Up Key "

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "com.sonimtech.setupwizard.EXTRA_KEY_UP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    const-string/jumbo v3, " Center Key "

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "com.sonimtech.setupwizard.EXTRA_KEY_CENTER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    const-string/jumbo v3, " Down Key "

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "com.sonimtech.setupwizard.EXTRA_KEY_DOWN"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sonim.scout.APPCONFIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    const-string/jumbo v1, "com.sonimtech.setupwizard.EXTRA_KEY_UP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string/jumbo v2, "com.sonimtech.setupwizard.EXTRA_KEY_CENTER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string/jumbo v3, "com.sonimtech.setupwizard.EXTRA_KEY_DOWN"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    if-eqz v1, :cond_1

    .line 53
    iget-object v4, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoUpKey:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Up key appName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoUpKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const v1, 0x7f0b0026

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoUpKey:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v4, "short_cut_change"

    .line 61
    const v5, 0x7f0b0023

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    :cond_1
    if-eqz v2, :cond_2

    .line 66
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoCenterKey:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Center key appName :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoCenterKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v1, 0x7f0b0028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoCenterKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, "short_cut_change"

    .line 75
    const v4, 0x7f0b0025

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    :cond_2
    if-eqz v3, :cond_3

    .line 80
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoDownKey:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Down key appName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoDownKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v1, 0x7f0b0027

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->appInfoDownKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "short_cut_change"

    .line 89
    const v2, 0x7f0b0024

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    :cond_3
    :goto_0
    return-void

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AppConfigReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceive Borqs Launcher: AppConfigReceiver Action is NULL!! "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
