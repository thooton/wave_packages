.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;
.super Ljava/lang/Object;
.source "HardKeySymbolWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updatemSymbolWindow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 119
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 120
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
