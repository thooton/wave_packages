.class public Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;
.super Lcom/nuance/flext9_OEM/input/HandWritingInputView;
.source "ChineseHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;,
        Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$2;
    }
.end annotation


# static fields
.field public static final HWR_123_MODE:I = 0x1

.field public static final HWR_ABC_MODE:I = 0x2

.field public static final HWR_CHN_MODE:I = 0x0

.field static final MSG_DELAY_RECOGNIZER:I = 0x1


# instance fields
.field private final MSG_HANDLE_CHAR:I

.field private final MSG_HANDLE_SUGGESTION_CANDIDATES:I

.field private final MSG_HANDLE_TEXT:I

.field private mContextCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mHandWritingMode:I

.field mHandler:Landroid/os/Handler;

.field private mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

.field private mRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStringHandWriting123Mode:Ljava/lang/String;

.field private mStringHandWritingABCMode:Ljava/lang/String;

.field private mStringHandWritingChnMode:Ljava/lang/String;

.field private mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

.field private mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 653
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->MSG_HANDLE_SUGGESTION_CANDIDATES:I

    .line 654
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->MSG_HANDLE_CHAR:I

    .line 655
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->MSG_HANDLE_TEXT:I

    .line 657
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    .line 728
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$2;-><init>(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V
    .locals 7

    .prologue
    const/16 v1, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1, v6}, Lcom/nuance/flext9_OEM/input/WriteChinese;->setAttribute(II)Z

    .line 142
    :goto_0
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 144
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    .line 166
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/WriteChinese;->setAttribute(II)Z

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 148
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 152
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 156
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 160
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    goto :goto_1

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 164
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    goto/16 :goto_1
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->selectActiveWord()V

    .line 457
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 458
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 459
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->noteSelectedCandidate(I)Z

    .line 464
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private addDigitPuncSymbolCategoty()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-nez v0, :cond_0

    .line 222
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 224
    if-nez v0, :cond_1

    .line 225
    return-void

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    sget-object v2, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_DIGIT:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 229
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    sget-object v1, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_PUNCTUATION:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 233
    :cond_3
    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 447
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v2, v1, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 448
    const/4 v0, 0x1

    return v0

    .line 451
    :cond_0
    return v1
.end method

.method private changeChineseHwrMode(I)Z
    .locals 11

    .prologue
    const v10, 0x7f050050

    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 264
    if-nez v2, :cond_0

    .line 265
    return v7

    .line 268
    :cond_0
    const/4 v0, -0x2

    invoke-direct {p0, v2, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v3

    .line 269
    if-nez v3, :cond_1

    .line 270
    return v7

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 279
    const v0, 0x7f0900b5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 280
    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 282
    invoke-direct {p0, v2, v6}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 283
    if-nez v0, :cond_3

    .line 284
    invoke-direct {p0, v2, v9}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 288
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 292
    :cond_4
    iput p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    .line 294
    iget v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v2, :cond_8

    .line 295
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->clearCategory()V

    .line 296
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addChineseCategory(I)V

    .line 297
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->addDigitPuncSymbolCategoty()V

    .line 298
    if-eqz v0, :cond_5

    .line 299
    iput-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 300
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v6, v1, v7

    .line 301
    const v1, 0x7f050032

    iput v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 302
    const v1, 0x7f090091

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 331
    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    .line 332
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->nextMode(I)I

    move-result v0

    .line 333
    if-nez v0, :cond_a

    .line 334
    const v0, 0x7f0900a5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 342
    :goto_1
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->setModeString(Ljava/lang/String;)V

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->changeSettings(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)Z

    .line 355
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 356
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7}, Lcom/nuance/flext9_OEM/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 357
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 358
    return v8

    .line 307
    :cond_8
    iget v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-ne v2, v8, :cond_9

    .line 308
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->clearCategory()V

    .line 309
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addMixSymbols()V

    .line 310
    if-eqz v0, :cond_5

    .line 311
    const-string/jumbo v2, "."

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 312
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v9, v2, v7

    .line 313
    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 314
    iput v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 315
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 320
    :cond_9
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->clearCategory()V

    .line 321
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addAlphaCategory()V

    .line 322
    if-eqz v0, :cond_5

    .line 323
    const-string/jumbo v2, "."

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 324
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v9, v2, v7

    .line 325
    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 326
    iput v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 327
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 336
    :cond_a
    if-ne v0, v8, :cond_b

    .line 337
    const v0, 0x7f090133

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 340
    :cond_b
    const v0, 0x7f090135

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->clearArcs()V

    .line 618
    :cond_0
    return-void
.end method

.method private findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;I)",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 253
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_0

    .line 254
    return-object v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContextCandidates()V
    .locals 4

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    const/4 v0, 0x1

    .line 470
    :cond_0
    :goto_0
    sget v2, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 472
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WriteChinese;->getWord(ILjava/lang/StringBuilder;)Z

    move-result v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_1
    return-void
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->sendBackspace(I)V

    .line 414
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private handleChar(C)V
    .locals 3

    .prologue
    const/16 v1, 0x20

    const/16 v0, 0xa

    .line 621
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    move p1, v0

    .line 628
    :cond_0
    :goto_0
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleBackspace()Z

    .line 642
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 643
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 644
    return-void

    .line 624
    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    move p1, v1

    .line 625
    goto :goto_0

    .line 631
    :cond_2
    if-ne p1, v1, :cond_3

    .line 632
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 634
    :cond_3
    if-ne p1, v0, :cond_4

    .line 635
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 636
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1

    .line 639
    :cond_4
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 640
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 389
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->sendSpace()V

    .line 390
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private nextMode(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v0, :cond_0

    .line 363
    return v2

    .line 365
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-ne v0, v2, :cond_1

    .line 366
    const/4 v0, 0x2

    return v0

    .line 369
    :cond_1
    return v1
.end method

.method private performDelayRecognition()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 760
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->performDelayRecognition()V

    .line 755
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 651
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    return-void
.end method

.method private updateCandidatesList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 488
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 489
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 490
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 493
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 495
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 513
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->requestLayout()V

    .line 514
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->invalidate()V

    .line 515
    return-void

    .line 499
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v4, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getContextCandidates()V

    goto :goto_1

    .line 509
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->clear()V

    goto :goto_0
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->nextMode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    .line 377
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 62
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    .line 68
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->create()Z

    .line 71
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 72
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setInputView(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 75
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->destroy()V

    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->destroy()V

    .line 87
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    .line 88
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    .line 89
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->finishInput()V

    .line 172
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->removeRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->finish()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 178
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->acceptCurrentInline()V

    .line 438
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 440
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 441
    return-void
.end method

.method public getHandWritingMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    return-object v0

    .line 243
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    return-object v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 419
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 422
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueChar(C)V

    .line 432
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleBackspace()Z

    goto :goto_0
.end method

.method public handleCharKey(I[I)V
    .locals 2

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueChar(C)V

    .line 385
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->handleClose()V

    .line 184
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 185
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 186
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->finish()V

    .line 187
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 192
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_1
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 195
    :cond_2
    return v1
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 201
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_1
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 204
    :cond_2
    return v1
.end method

.method protected handleSpace(ZI)Z
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 394
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 397
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueChar(C)V

    .line 407
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5

    .line 600
    iget v0, p1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 612
    :goto_0
    return-void

    .line 602
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 533
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 535
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    if-eq v0, p1, :cond_0

    .line 536
    check-cast p1, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    .line 537
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mWidth:I

    .line 538
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mHeight:I

    .line 539
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->changeSettings(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)Z

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 546
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->startArcsAddingSequence()V

    .line 549
    :cond_1
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 4
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
    .line 553
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->queueAddArc(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mRecognizeDelay:I

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 564
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/flext9_OEM/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 566
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->noteSelectedCandidate(I)Z

    .line 570
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 571
    return-void
.end method

.method public setActiveCandidate(I)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 485
    :cond_0
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 521
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 523
    :cond_0
    check-cast p1, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    .line 524
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->setModeString(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 528
    :cond_1
    return-void
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 99
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->addRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->clearCategory()V

    .line 105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addChineseCategory(I)V

    .line 106
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WriteChinese;->start(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;I)Z

    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_0

    .line 114
    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 115
    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 121
    :goto_0
    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    const-string/jumbo v2, "auto_recpgnize_delay"

    const/16 v3, 0x2bc

    invoke-static {v0, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mRecognizeDelay:I

    .line 126
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 131
    return-void

    .line 118
    :cond_0
    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 119
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 576
    invoke-super/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->updateSelection(IIIIII)V

    .line 578
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/flext9_OEM/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 592
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 593
    return-void

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 586
    if-ne p3, p6, :cond_3

    if-eq p4, p6, :cond_1

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->acceptCurrentInline()V

    .line 588
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->clearArcs()V

    .line 589
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 590
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
