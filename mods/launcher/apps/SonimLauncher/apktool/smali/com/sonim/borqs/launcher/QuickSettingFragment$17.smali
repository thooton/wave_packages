.class Lcom/sonim/borqs/launcher/QuickSettingFragment$17;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$17;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$17;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get4(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 541
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$17;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get4(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 542
    return-void
.end method
