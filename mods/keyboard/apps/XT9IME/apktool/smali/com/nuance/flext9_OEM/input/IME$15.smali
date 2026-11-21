.class Lcom/nuance/flext9_OEM/input/IME$15;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME;->showShiftModeOptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;

.field final synthetic val$shiftModeAdatper:Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$15;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/IME$15;->val$shiftModeAdatper:Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;

    .line 4459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 4462
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$15;->val$shiftModeAdatper:Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;

    invoke-virtual {v0, p2}, Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4463
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4464
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$15;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftStateFromOptionDialog(Ljava/lang/String;)V

    .line 4466
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4467
    return-void
.end method
