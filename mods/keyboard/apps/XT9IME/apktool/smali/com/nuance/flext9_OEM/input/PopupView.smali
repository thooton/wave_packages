.class public abstract Lcom/nuance/flext9_OEM/input/PopupView;
.super Ljava/lang/Object;
.source "PopupView.java"


# instance fields
.field protected mHeight:I

.field protected mParentView:Lcom/nuance/flext9_OEM/input/InputView;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/PopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    .line 10
    iput v1, p0, Lcom/nuance/flext9_OEM/input/PopupView;->mWidth:I

    .line 11
    iput v1, p0, Lcom/nuance/flext9_OEM/input/PopupView;->mHeight:I

    .line 3
    return-void
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract isShowing()Z
.end method

.method public setParentView(Lcom/nuance/flext9_OEM/input/InputView;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/PopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    .line 15
    return-void
.end method

.method public abstract show(IIII)Z
.end method
