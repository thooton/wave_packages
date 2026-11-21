.class public Lcom/nuance/flext9_OEM/input/EnableIMEActivity;
.super Landroid/app/Activity;
.source "EnableIMEActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->requestWindowFeature(I)Z

    .line 19
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    new-instance v1, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/EnableIMEActivity$1;-><init>(Lcom/nuance/flext9_OEM/input/EnableIMEActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
