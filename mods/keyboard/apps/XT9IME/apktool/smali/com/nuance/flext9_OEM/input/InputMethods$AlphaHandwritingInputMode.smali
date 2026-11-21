.class public Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;
.super Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaHandwritingInputMode"
.end annotation


# instance fields
.field mFullScreenHandwritingState:Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .prologue
    .line 1421
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1423
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;-><init>(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mFullScreenHandwritingState:Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;

    .line 1426
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get2(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1428
    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    .line 1429
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1430
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1431
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1433
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1471
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    return-object v0

    .line 1474
    :cond_0
    return-object v2
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1439
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    .line 1445
    :goto_0
    return v0

    .line 1439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 3

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->saveAsCurrent()V

    .line 1464
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1465
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1466
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1456
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1457
    return-void
.end method
