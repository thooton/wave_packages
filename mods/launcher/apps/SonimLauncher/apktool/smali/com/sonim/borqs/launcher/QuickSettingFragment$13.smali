.class Lcom/sonim/borqs/launcher/QuickSettingFragment$13;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->showTurnOffWifiDialog()V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$13;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$13;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get7(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string/jumbo v0, "persist.sys.wifi.check"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$13;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap15(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 473
    return-void
.end method
