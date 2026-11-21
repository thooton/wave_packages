.class public Lcom/nuance/flext9_OEM/input/HandWritingInputView;
.super Lcom/nuance/flext9_OEM/input/InputView;
.source "HandWritingInputView.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;
    }
.end annotation


# instance fields
.field private final MSG_DELAY_SHOWING_FULLSCREEN:I

.field protected mComposition:Lcom/nuance/flext9_OEM/input/Composition;

.field protected mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

.field private mDelayShowingFullScreenHandler:Landroid/os/Handler;

.field protected mFullScreenHandWriting:Z

.field protected mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

.field protected mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/HandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->MSG_DELAY_SHOWING_FULLSCREEN:I

    .line 29
    new-instance v0, Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/HandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/nuance/flext9_OEM/input/Composition;

    invoke-direct {v0, p1}, Lcom/nuance/flext9_OEM/input/Composition;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    .line 50
    return-void
.end method

.method private showDelayFullScreen()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->showHandWritingView(Z)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method


# virtual methods
.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    .line 92
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->initViews()V

    .line 93
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setCandidatesViewShown(Z)V

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    return-object v0
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 79
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 80
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 81
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->stopSpeech()V

    .line 82
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    return-object v0
.end method

.method getFullScreenSettingKey(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fullscreen.enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method getLastFullScreenState(I)Z
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 71
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 72
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 73
    return-void
.end method

.method protected hideFullScreenHandWritingView()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 181
    return-void
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mFullScreenHandWriting:Z

    return v0
.end method

.method public isSpecialLanguage()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isSpecialLanguage(I)Z

    move-result v0

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public penUp([Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 261
    return-void
.end method

.method protected postDelayShowingFullScreenMsg()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    return-void
.end method

.method protected removeDelayShowingFullScreenMsg()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public setContainerView(Lcom/nuance/flext9_OEM/input/HandWritingContainerView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    .line 108
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 117
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method setLastFullScreenState(Z)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 220
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 123
    return-void
.end method

.method public showHandWritingView(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 150
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->getHeight()I

    move-result v2

    .line 156
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getHeight()I

    move-result v3

    .line 157
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 158
    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 160
    if-eqz v0, :cond_1

    .line 161
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v2, v0}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    neg-int v2, v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_2
    if-eqz v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->mHandwritingPadView:Lcom/nuance/flext9_OEM/input/HandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/HandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method

.method protected showLastSavedHandWritingScreen()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->getLastFullScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 205
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setNormalHandScreenWritingFrame()V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->showHandWritingView(Z)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 61
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 62
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 63
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 65
    return-void
.end method

.method public toggleFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 129
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setLastFullScreenState(Z)V

    .line 142
    return v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method
