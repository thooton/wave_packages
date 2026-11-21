.class Lcom/nuance/flext9_OEM/input/GridEmojiView$1;
.super Ljava/lang/Object;
.source "GridEmojiView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/GridEmojiView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/GridEmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;->this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 84
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;->this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    .line 86
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 88
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;->this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;->this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    .line 91
    return-void

    .line 92
    :cond_0
    if-ne v0, v2, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;->this$0:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->populateRecentEmojilist(Ljava/lang/String;)V

    .line 96
    return-void
.end method
