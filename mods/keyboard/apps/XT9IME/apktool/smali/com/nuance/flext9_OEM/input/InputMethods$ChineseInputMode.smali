.class public Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;
.super Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .prologue
    .line 1485
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1490
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 3

    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1507
    return v0
.end method

.method public saveAsCurrent()V
    .locals 0

    .prologue
    .line 1494
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1495
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1519
    return-void
.end method
