.class public Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;
.super Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaAmbigInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .prologue
    .line 1381
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1384
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get2(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1386
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1388
    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    .line 1398
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->setEnabled(Z)V

    .line 1409
    return-void
.end method
