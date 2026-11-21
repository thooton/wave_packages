.class Lcom/nuance/flext9_OEM/input/IME$9;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/IME;->showEULAMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final message:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$9;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 2754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2755
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$9;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2756
    const v1, 0x7f090164

    .line 2755
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$9;->message:Ljava/lang/String;

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$9;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME$9;->message:Ljava/lang/String;

    .line 2760
    const/4 v2, 0x1

    .line 2759
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2761
    return-void
.end method
