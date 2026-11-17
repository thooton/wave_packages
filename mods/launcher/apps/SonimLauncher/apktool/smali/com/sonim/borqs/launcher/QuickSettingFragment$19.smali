.class Lcom/sonim/borqs/launcher/QuickSettingFragment$19;
.super Ljava/lang/Object;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/QuickSettingFragment;->showDisableDialog()V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$19;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$19;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 669
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment$19;->this$0:Lcom/sonim/borqs/launcher/QuickSettingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->-wrap10(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 670
    return-void
.end method
