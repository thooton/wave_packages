.class Lcom/sonim/borqs/launcher/QuickSettingFragment$27;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->addSwitchProfile()V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$27;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1498
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "borqs.intent.action.MULTI_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    const-string/jumbo v1, "extra_quick_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1500
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$27;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 1501
    return v2
.end method
