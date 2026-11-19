.class Lcom/sonim/borqs/launcher/QuickSettingFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 967
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 971
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 976
    const-string/jumbo v1, "connected"

    .line 975
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 978
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 979
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void

    .line 983
    :cond_0
    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 985
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get12(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 995
    :cond_1
    :goto_0
    return-void

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get12(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const-string/jumbo v1, "key_usb_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get12(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
