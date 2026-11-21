.class public Lcom/nuance/flext9_OEM/input/InputMethodToast;
.super Ljava/lang/Object;
.source "InputMethodToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 38
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    .line 19
    :cond_0
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 20
    const v1, 0x7f03001f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    const v0, 0x7f0d003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 25
    if-lt p2, v3, :cond_1

    .line 26
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 30
    :goto_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 32
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
