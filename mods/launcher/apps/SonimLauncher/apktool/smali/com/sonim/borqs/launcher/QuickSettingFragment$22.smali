.class Lcom/sonim/borqs/launcher/QuickSettingFragment$22;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->addUsbSettingIfNotPresent()V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$22;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 1016
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.settings"

    .line 1017
    const-string/jumbo v2, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    .line 1016
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$22;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1019
    const/4 v0, 0x1

    return v0
.end method
