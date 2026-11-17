.class Lcom/sonim/borqs/launcher/QuickSettingFragment$9;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;


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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private sendTorchAvailableMsg(Z)V
    .locals 3

    .prologue
    .line 1324
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1325
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1326
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1327
    const-string/jumbo v2, "torch_available"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1328
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1329
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get11(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1330
    return-void
.end method

.method private sendTorchStateMsg(Z)V
    .locals 3

    .prologue
    .line 1315
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1316
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1317
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1318
    const-string/jumbo v2, "torch_enabled"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1319
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1320
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get11(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1321
    return-void
.end method


# virtual methods
.method public onFlashlightAvailabilityChanged(Z)V
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->sendTorchAvailableMsg(Z)V

    .line 1312
    :cond_0
    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->sendTorchStateMsg(Z)V

    .line 1298
    :cond_0
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;->sendTorchStateMsg(Z)V

    .line 1305
    :cond_0
    return-void
.end method
