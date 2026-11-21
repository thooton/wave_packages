.class public Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;
.super Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseHandwritingInputMode"
.end annotation


# instance fields
.field public mFullScreenHandwritingState:Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 1

    .prologue
    .line 1532
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 1534
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;-><init>(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;->mFullScreenHandwritingState:Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;

    .line 1535
    return-void
.end method


# virtual methods
.method public getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1540
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    return-object v0

    .line 1544
    :cond_0
    return-object v2
.end method
