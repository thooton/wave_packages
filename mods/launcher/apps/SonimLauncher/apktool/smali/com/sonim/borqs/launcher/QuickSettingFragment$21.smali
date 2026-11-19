.class Lcom/sonim/borqs/launcher/QuickSettingFragment$21;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->initWifiCallSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$21;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    .line 785
    const-string/jumbo v3, "com.android.settings.Settings$WifiCallingSettingsActivity"

    .line 784
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 786
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 787
    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$21;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 790
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
