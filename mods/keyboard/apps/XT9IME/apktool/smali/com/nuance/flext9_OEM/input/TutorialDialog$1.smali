.class Lcom/nuance/flext9_OEM/input/TutorialDialog$1;
.super Ljava/lang/Object;
.source "TutorialDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/TutorialDialog;->show(Landroid/os/IBinder;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/TutorialDialog;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/TutorialDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/TutorialDialog$1;->this$0:Lcom/nuance/flext9_OEM/input/TutorialDialog;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 29
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
