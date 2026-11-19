.class Lcom/sonim/borqs/launcher/QuickSettingFragment$11;
.super Landroid/database/DataSetObserver;
.source "QuickSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 374
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 378
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get5(Lcom/sonim/borqs/launcher/QuickSettingFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-set1(Lcom/sonim/borqs/launcher/QuickSettingFragment;I)I

    .line 382
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap11(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 383
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get5(Lcom/sonim/borqs/launcher/QuickSettingFragment;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get9(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get10(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get9(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-get10(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
