.class public Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;
.super Lcom/nuance/flext9_OEM/input/HandWritingContainerView;
.source "AlphaHandWritingContainerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 24
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->initViews()V

    .line 30
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    const v1, 0x7f0d0018

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 34
    const v1, 0x7f0d0019

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 36
    const v1, 0x7f030007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 37
    const v1, 0x7f030004

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    .line 38
    const v1, 0x7f030002

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 40
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    .line 41
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    .line 45
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setContainerView(Lcom/nuance/flext9_OEM/input/HandWritingContainerView;)V

    .line 49
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;)V

    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setOnWritingActionListener(Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;)V

    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V

    .line 57
    :cond_0
    return-void
.end method
