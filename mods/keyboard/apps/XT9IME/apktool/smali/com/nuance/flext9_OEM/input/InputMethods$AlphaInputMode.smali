.class public Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;
.super Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .prologue
    .line 1344
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1345
    return-void
.end method


# virtual methods
.method public syncCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1349
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1355
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 1358
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1370
    :goto_0
    return-object v0

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 1362
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 1367
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->getLanguageId()I

    move-result v2

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0
.end method
