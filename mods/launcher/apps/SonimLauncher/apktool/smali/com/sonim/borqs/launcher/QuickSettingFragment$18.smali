.class Lcom/sonim/borqs/launcher/QuickSettingFragment$18;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    iput-boolean p2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;->val$enable:Z

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get3(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Lcom/sonim/borqs/launcher/FlashlightController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;->setFlashlight(Z)V

    .line 635
    return-void
.end method
