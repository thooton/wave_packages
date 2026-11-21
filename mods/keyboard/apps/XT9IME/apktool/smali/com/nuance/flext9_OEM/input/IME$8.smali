.class Lcom/nuance/flext9_OEM/input/IME$8;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME;->showOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$8;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 2690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2693
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2694
    packed-switch p2, :pswitch_data_0

    .line 2703
    :goto_0
    return-void

    .line 2696
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$8;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap1(Lcom/nuance/flext9_OEM/input/IME;)V

    goto :goto_0

    .line 2699
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$8;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 2694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
