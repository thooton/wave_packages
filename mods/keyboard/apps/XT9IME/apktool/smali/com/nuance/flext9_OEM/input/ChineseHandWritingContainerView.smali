.class public Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;
.super Lcom/nuance/flext9_OEM/input/HandWritingContainerView;
.source "ChineseHandWritingContainerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 26
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->initViews()V

    .line 28
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 29
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 30
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    const v1, 0x7f03000e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 34
    const v1, 0x7f030010

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    .line 35
    const v1, 0x7f030012

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 37
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 38
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    .line 42
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setContainerView(Lcom/nuance/flext9_OEM/input/HandWritingContainerView;)V

    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;)V

    .line 47
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;)V

    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V

    .line 50
    :cond_0
    return-void
.end method
