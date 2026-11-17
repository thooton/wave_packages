.class Lcom/sonim/borqs/launcher/QuickSettingFragment$12;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$12;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 398
    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    .line 399
    const/16 v0, 0x13

    if-ne p2, v0, :cond_1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$12;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-set0(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)Z

    .line 403
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
