.class public Lcom/nuance/flext9_OEM/input/HandWritingPopupView;
.super Lcom/nuance/flext9_OEM/input/PopupView;
.source "HandWritingPopupView.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;
.implements Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;,
        Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;,
        Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;
    }
.end annotation


# static fields
.field static final MSG_DELAY_RECOGNIZER:I = 0x1


# instance fields
.field private final MSG_HANDLE_CHAR:I

.field private final MSG_HANDLE_INSTANT_GESTURE_CHAR:I

.field private final MSG_HANDLE_KEY:I

.field private final MSG_HANDLE_SUGGESTION_CANDIDATES:I

.field private final MSG_HANDLE_TEXT:I

.field private mContext:Landroid/content/Context;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field private mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

.field private mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

.field private mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

.field private mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;CLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->handleInstantGestureChar(CLjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->notifyResult(C)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->performDelayRecognition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/PopupView;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    .line 37
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    .line 38
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    .line 39
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 41
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 42
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 44
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 46
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mContext:Landroid/content/Context;

    .line 321
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->MSG_HANDLE_SUGGESTION_CANDIDATES:I

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->MSG_HANDLE_CHAR:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->MSG_HANDLE_TEXT:I

    .line 324
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->MSG_HANDLE_INSTANT_GESTURE_CHAR:I

    .line 325
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->MSG_HANDLE_KEY:I

    .line 327
    new-instance v0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;-><init>(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;-><init>(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V
    .locals 4

    .prologue
    const v3, 0x7f050001

    .line 55
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0057

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 57
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 73
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 74
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0056

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 61
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 65
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 69
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    goto :goto_0
.end method

.method private createLayout(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWidth:I

    if-eq p1, v0, :cond_1

    .line 80
    :cond_0
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWidth:I

    .line 81
    iput p2, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHeight:I

    .line 83
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 85
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 90
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 92
    const v1, 0x7f030005

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 93
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWidth:I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHeight:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 99
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->setOnWritingActionListener(Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;)V

    .line 101
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHeight:I

    if-ne p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method private handleInstantGestureChar(CLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->removeDelayRecognitionMsg()V

    .line 284
    const/16 v0, 0x21d0

    if-eq p1, v0, :cond_0

    .line 285
    const/16 v0, 0x21d2

    if-ne p1, v0, :cond_1

    .line 288
    :cond_0
    return-void

    .line 286
    :cond_1
    const/16 v0, 0x21d3

    if-eq p1, v0, :cond_0

    .line 287
    const/16 v0, 0x21d1

    if-eq p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 294
    :cond_2
    return-void
.end method

.method private initializeHandwriting()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    .line 117
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->create()Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    sget v1, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->NO_LINE_SUPPORTS:I

    iput v1, v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mSupportLineSet:I

    .line 123
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWidth:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHeight:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 125
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iput v2, v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mWritingDirection:I

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setRecognitionMode(I)V

    .line 127
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addTextCategoryForSCRMode(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->start(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;Landroid/content/Context;I)Z

    .line 132
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->addRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 134
    :cond_2
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private notifyResult(C)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;->updateHandWritingResult(C)V

    .line 188
    :cond_0
    return-void
.end method

.method private notifyResult(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;->updateHandWritingResult(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    return-void
.end method

.method private performDelayRecognition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWritingView:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->startFading()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 412
    :cond_1
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->performDelayRecognition()V

    .line 421
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->removeDelayRecognitionMsg()V

    .line 378
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->finish()V

    .line 172
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5

    .line 297
    iget v0, p1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 316
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onKey(I[I)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->removeAllPendingMsg()V

    .line 203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 207
    :cond_1
    return-void

    .line 198
    :cond_2
    const/16 v0, -0x9

    if-eq p1, v0, :cond_0

    .line 199
    const/4 v0, -0x8

    if-eq p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->processPendingRecognizing()V

    .line 213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueKey(I)V

    .line 215
    :cond_3
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onPress(I)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->isPendingRecognizeMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->onText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->processPendingRecognizing()V

    .line 229
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_2
    return-void
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->removeDelayRecognitionMsg()V

    .line 260
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->startArcsAddingSequence()V

    .line 262
    :cond_0
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
    .line 265
    return-void
.end method

.method public penUp([Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 271
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_0

    .line 273
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v0, p1

    if-le v0, v5, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mRecognizeDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 273
    goto :goto_0
.end method

.method public setHandWritingResultListener(Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mResultListener:Lcom/nuance/flext9_OEM/input/HandWritingPopupView$HandWritingResultListener;

    .line 176
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 157
    return-void
.end method

.method public show(IIII)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0, p3, p4}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->createLayout(II)V

    .line 140
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->initializeHandwriting()V

    .line 142
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->mParentView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 149
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_1
    return v2
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method
