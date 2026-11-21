.class Lcom/nuance/flext9_OEM/input/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/SettingsFragment;->createInputModeCheckbox(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->-wrap1(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V

    .line 407
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->-get0(Lcom/nuance/flext9_OEM/input/SettingsFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 408
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v2, "language_screen_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->-set0(Lcom/nuance/flext9_OEM/input/SettingsFragment;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 409
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->-get0(Lcom/nuance/flext9_OEM/input/SettingsFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->-wrap0(Lcom/nuance/flext9_OEM/input/SettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method
