.class Lcom/sonim/borqs/launcher/QuickSettingFragment$1;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$1;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 688
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$1;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$1;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get8(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isTorchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 692
    return-void
.end method
