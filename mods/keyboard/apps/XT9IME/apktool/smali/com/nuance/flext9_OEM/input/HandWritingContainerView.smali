.class public Lcom/nuance/flext9_OEM/input/HandWritingContainerView;
.super Landroid/widget/LinearLayout;
.source "HandWritingContainerView.java"


# instance fields
.field protected mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

.field protected mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

.field protected mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field protected mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

.field protected mKeyboardAreadFrame:Landroid/widget/FrameLayout;

.field protected mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/flext9_OEM/input/InputView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->initViews()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V

    .line 35
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 39
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V

    .line 45
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/flext9_OEM/input/HandWritingView;->measure(II)V

    .line 59
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2, v2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 65
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 67
    :cond_0
    return-void
.end method
