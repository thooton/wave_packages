.class public Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullScreenHandwritingState"
.end annotation


# instance fields
.field private mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

.field private mRememberFullScreenModeKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 2

    .prologue
    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->-wrap0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    .line 1560
    return-void
.end method


# virtual methods
.method public isUseInFullScreenMode()Z
    .locals 3

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1573
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1575
    return v0
.end method

.method public setUseInFullScreenMode(Z)V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1565
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;->mRememberFullScreenModeKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1566
    return-void
.end method
