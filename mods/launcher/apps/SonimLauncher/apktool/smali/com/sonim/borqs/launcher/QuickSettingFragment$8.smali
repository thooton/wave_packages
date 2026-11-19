.class Lcom/sonim/borqs/launcher/QuickSettingFragment$8;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get0(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1197
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "in BT onServiceConnected"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get0(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1199
    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    .line 1201
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap3(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 1203
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 1206
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "in BT onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 1208
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap3(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 1209
    return-void
.end method
