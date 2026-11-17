.class Lcom/sonim/borqs/launcher/QuickSettingFragment$10;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$10;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1347
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1350
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1368
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_0

    .line 1355
    const-string/jumbo v1, "torch_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1356
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$10;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap13(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    goto :goto_0

    .line 1360
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    const-string/jumbo v1, "torch_available"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1363
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$10;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap12(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
