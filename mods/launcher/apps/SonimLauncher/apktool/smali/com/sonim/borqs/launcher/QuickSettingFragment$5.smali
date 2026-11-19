.class Lcom/sonim/borqs/launcher/QuickSettingFragment$5;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$5;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 952
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 955
    const-string/jumbo v0, "android.intent.action.SERVICE_STATE"

    .line 956
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$5;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap8(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 959
    :cond_0
    return-void
.end method
