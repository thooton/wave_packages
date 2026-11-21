.class public Lcom/nuance/flext9_OEM/input/SymbolAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SymbolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mSymbolarrays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 43
    iput-object p3, p0, Lcom/nuance/flext9_OEM/input/SymbolAdapter;->mSymbolarrays:[Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public OnClickListener(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 64
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SymbolAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    .line 66
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 67
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 68
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SymbolAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    .line 69
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SymbolAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    const v2, 0x7f020017

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SymbolAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    const v3, 0x7f0c0014

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 61
    :cond_0
    return-object v1
.end method
