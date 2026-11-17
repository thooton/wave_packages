.class Lcom/sonim/borqs/launcher/QuickSettingFragment$7;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1054
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1059
    const-string/jumbo v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    const-string/jumbo v0, "tetherArray"

    .line 1061
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1065
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1066
    iget-object v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v3, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap0(Lcom/sonim/borqs/launcher/QuickSettingFragment;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1075
    :goto_0
    iget-object v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v3, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap5(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 1076
    const-string/jumbo v3, "QuickSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TetheringReceiver, value of isTetheringEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get13(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    .line 1080
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap4(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 1086
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1069
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1073
    goto :goto_0

    .line 1082
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap4(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    goto :goto_1
.end method
