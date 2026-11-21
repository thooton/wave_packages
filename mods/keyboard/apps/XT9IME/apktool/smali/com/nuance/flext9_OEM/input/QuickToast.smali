.class public Lcom/nuance/flext9_OEM/input/QuickToast;
.super Ljava/lang/Object;
.source "QuickToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    .line 10
    return-void
.end method

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
    .line 31
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 34
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    .line 19
    :cond_0
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 20
    const v1, 0x7f030023

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    const v0, 0x7f0d0040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 25
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 26
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 28
    sget-object v0, Lcom/nuance/flext9_OEM/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    return-void
.end method
