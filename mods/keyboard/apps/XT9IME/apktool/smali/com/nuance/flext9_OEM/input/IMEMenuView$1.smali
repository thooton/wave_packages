.class Lcom/nuance/flext9_OEM/input/IMEMenuView$1;
.super Ljava/lang/Object;
.source "IMEMenuView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IMEMenuView;->constructView(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$1;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$1;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get0(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$1;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get0(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->-wrap0(Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;)V

    .line 98
    return-void
.end method
