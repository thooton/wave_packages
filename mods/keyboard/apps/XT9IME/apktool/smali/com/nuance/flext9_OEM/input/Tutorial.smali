.class public Lcom/nuance/flext9_OEM/input/Tutorial;
.super Landroid/app/Activity;
.source "Tutorial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/Tutorial;->setContentView(I)V

    .line 15
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/Tutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 16
    const v1, 0x7f090196

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/Tutorial;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 17
    return-void
.end method
