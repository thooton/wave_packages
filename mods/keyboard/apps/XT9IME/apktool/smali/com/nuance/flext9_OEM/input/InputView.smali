.class public Lcom/nuance/flext9_OEM/input/InputView;
.super Lcom/nuance/flext9_OEM/input/KeyboardViewEx;
.source "InputView.java"


# static fields
.field protected static final MSG_DELAY_HIDE_CANDIDATE_VIEW:I = 0x2

.field protected static final MSG_DELAY_HIDE_SPELL_VIEW:I = 0x3

.field protected static final MSG_DELAY_RESET_DISABLE_TOOLBAR_FLAG:I = 0xa

.field protected static final MSG_DELAY_RESET_INLINE_FLAG:I = 0x8

.field protected static final MSG_DELAY_SHOW_ABC_XT9_KEY_TOAST:I = 0x5

.field protected static final MSG_DELAY_SHOW_TRACE_AUTO_ACCEPT_TIP:I = 0x6

.field protected static final MSG_DELAY_SHOW_TRACE_INPUT_TIP:I = 0x7

.field protected static final MSG_DELAY_UPDATE_DISPLAY:I = 0x4

.field protected static final MSG_DOUBLE_TAP_RECAPTURE:I = 0x9

.field protected static final MSG_GET_MORE_SUGGESTIONS:I = 0x1

.field protected static final MSG_SHOW_START_OF_WORD_CANDIDATE:I = 0xa

.field protected static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field static final TAG:Ljava/lang/String; = "XT9IME.InputView"

.field protected static final TIME_DELAY_RESET_DISABLE_TOOLBAR_FLAG:I = 0x1f4


# instance fields
.field protected mAutoCap:Z

.field protected mAutoPunctuation:Z

.field protected mCapsLock:Z

.field protected mCommittedLength:I

.field protected mCompletionOn:Z

.field protected mContext:Landroid/content/Context;

.field protected mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

.field protected mEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFuzzyPinyin:I

.field protected mIme:Lcom/nuance/flext9_OEM/input/IME;

.field protected mInURLEmail:Z

.field protected mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

.field public mIsUseHardkey:Z

.field protected mKeyboardLayoutId:I

.field private mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

.field protected mPredictionOff:Z

.field protected mPreferExplicit:Z

.field protected mPunctuationSymbols:Ljava/lang/String;

.field protected mSentenceSeparators:Ljava/lang/String;

.field protected mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

.field protected mStarted:Z

.field protected mWordCompounders:Ljava/lang/String;

.field protected mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mEmojis:Ljava/util/ArrayList;

    .line 63
    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mKeyboardLayoutId:I

    .line 70
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIsUseHardkey:Z

    .line 78
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    return-object v0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 566
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getAutoCap(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mAutoCap:Z

    .line 567
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getAutoPunctuation(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mAutoPunctuation:Z

    .line 568
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mKeyboardLayoutId:I

    .line 569
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getFuzzyPairs(Landroid/content/SharedPreferences;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mFuzzyPinyin:I

    .line 570
    return-void
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public clearComposingState()V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected closeSpeech()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->close()V

    .line 857
    :cond_0
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 95
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordSeparators:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordCompounders:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/flext9_OEM/input/IME;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 103
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordSeparators:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordCompounders:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputView;->mEmojis:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInstance()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected cycleShiftAndNumberMode()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public cyclingLanguage()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->cyclingLanguage()V

    .line 735
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 120
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mContext:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 122
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 123
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordSeparators:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public destroyInstance()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->destroySpeechWrapper()V

    .line 140
    return-void
.end method

.method protected destroySpeechWrapper()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->onDestroy()V

    .line 863
    :cond_0
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 188
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->multitapClearInvalid()V

    .line 190
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->stopSpeech()V

    .line 191
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardKeyboardLayout(I[C)I
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public getHardKeyboardLayoutResourceID()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mLayout:I

    return v0

    .line 787
    :cond_0
    const v0, 0x7f050005

    return v0
.end method

.method public getHardKeyboardLayoutResourceID(I)I
    .locals 5

    .prologue
    const v4, 0x7f050005

    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 756
    new-array v1, v3, [C

    .line 758
    invoke-virtual {p0, p1, v1}, Lcom/nuance/flext9_OEM/input/InputView;->getHardKeyboardLayout(I[C)I

    move-result v0

    .line 759
    if-le v0, v3, :cond_0

    .line 760
    new-array v1, v0, [C

    .line 761
    invoke-virtual {p0, p1, v1}, Lcom/nuance/flext9_OEM/input/InputView;->getHardKeyboardLayout(I[C)I

    move-result v0

    .line 763
    :cond_0
    if-lez v0, :cond_5

    .line 764
    invoke-static {v1, v2, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 765
    const-string/jumbo v1, "QWERTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    return v4

    .line 768
    :cond_1
    const-string/jumbo v1, "AZERTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    const v0, 0x7f050006

    return v0

    .line 771
    :cond_2
    const-string/jumbo v1, "QWERTZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 772
    const v0, 0x7f05000c

    return v0

    .line 774
    :cond_3
    const-string/jumbo v1, "QWERTY_it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    const v0, 0x7f05000b

    return v0

    .line 777
    :cond_4
    const-string/jumbo v1, "QWERTY_es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 778
    const v0, 0x7f05000a

    return v0

    .line 781
    :cond_5
    return v4
.end method

.method public getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    return-object v0
.end method

.method public getInputModeAndShiftState()Ljava/util/AbstractMap$SimpleEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsEmojiShownInCandidateView()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboardSwitcherMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-nez v0, :cond_0

    return-object v1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getParentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getSpeechAlternateCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->getAlternateCandidates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/IME;->sendDownUpKeyEvents(I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(I[I)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->closing()V

    .line 332
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->closeSpeech()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    .line 334
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 296
    sparse-switch p1, :sswitch_data_0

    .line 323
    const/4 v0, 0x0

    return v0

    .line 298
    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/nuance/flext9_OEM/input/InputView;->handleBackspace(I)Z

    move-result v0

    return v0

    .line 301
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/InputView;->handleSpace(ZI)Z

    move-result v0

    return v0

    .line 304
    :sswitch_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleShift()V

    .line 305
    return v0

    .line 308
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleMultitapDeadkey()V

    .line 309
    return v0

    .line 312
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 313
    return v0

    .line 316
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->changeKeyboardMode()V

    .line 317
    return v0

    .line 319
    :sswitch_6
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->setEmojiKeyboard()V

    .line 320
    return v0

    .line 296
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_3
        -0xb -> :sswitch_6
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 249
    :cond_0
    return v1

    .line 237
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleBack()Z

    move-result v0

    return v0

    .line 235
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMultitapDeadkey()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public handleMultitapHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x6a

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v1

    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-eq v1, v2, :cond_0

    .line 654
    return v0

    .line 656
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getMultitap()Z

    move-result v2

    if-nez v2, :cond_5

    .line 658
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 660
    :cond_1
    return v0

    .line 662
    :cond_2
    array-length v2, v1

    new-array v2, v2, [I

    .line 663
    if-nez v2, :cond_3

    .line 664
    return v0

    .line 666
    :cond_3
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 667
    aget-object v3, v1, v0

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->onText(Ljava/lang/CharSequence;)V

    .line 670
    return v8

    .line 673
    :cond_5
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 675
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 676
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    :cond_6
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 680
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    .line 681
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    .line 682
    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    .line 684
    :cond_7
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleBackspace(I)Z

    .line 685
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0, v6}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    .line 714
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 718
    :cond_8
    return v8

    .line 688
    :cond_9
    if-eqz v2, :cond_a

    .line 689
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    .line 690
    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    .line 691
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    .line 692
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->onMultitapTimeout()V

    .line 693
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->setMultitapMode(Z)V

    .line 696
    :cond_a
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    .line 697
    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyIndex:I

    .line 698
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 699
    if-eqz v2, :cond_b

    array-length v1, v2

    if-nez v1, :cond_c

    .line 700
    :cond_b
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    .line 701
    return v0

    .line 703
    :cond_c
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    .line 704
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    if-nez v1, :cond_d

    .line 705
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapHarKeyName:Ljava/lang/String;

    .line 706
    return v0

    :cond_d
    move v1, v0

    .line 708
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_e

    .line 709
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    aget-object v4, v2, v1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v1

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 711
    :cond_e
    invoke-virtual {p0, v8}, Lcom/nuance/flext9_OEM/input/InputView;->setMultitapMode(Z)V

    .line 712
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mMultitapCharacters:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0, v6}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    goto :goto_1
.end method

.method protected handleMultitapToggle()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method protected handleShift()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->sendSpace()V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public handleSwitchPage()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public handleTrace(Ljava/util/ArrayList;)V
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
    .line 279
    return-void
.end method

.method protected isAlphabet(I)Z
    .locals 1

    .prologue
    .line 400
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    return v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isCursorTouchingWord()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 421
    if-nez v0, :cond_0

    return v3

    .line 422
    :cond_0
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 423
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 424
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->isWordSeparator(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 424
    if-eqz v1, :cond_1

    .line 426
    return v4

    .line 428
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->isWordSeparator(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 428
    if-eqz v0, :cond_2

    .line 430
    return v4

    .line 432
    :cond_2
    return v3
.end method

.method public isDoubleCharEmoji(CC)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-static {p1, p2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    return v2

    .line 508
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 509
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->DINGBATS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    .line 510
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->EMOTICONS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_2

    .line 515
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_2
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    .line 512
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->TRANSPORT_AND_MAP_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    .line 513
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS_AND_ARROWS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    .line 514
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->PLAYING_CARDS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    .line 517
    return v2
.end method

.method protected isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->isHighlightedTextSpeechDictated()Z

    move-result v0

    return v0

    .line 878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isLeftCursorWordWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    return v4

    .line 443
    :cond_0
    const/16 v1, 0x41

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_3

    .line 445
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 448
    if-lez v0, :cond_3

    .line 449
    :goto_0
    if-lez v0, :cond_1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/InputView;->isWhiteSpace(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 450
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/InputView;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    add-int/lit8 v0, v0, 0x1

    .line 457
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_3

    .line 462
    return v3

    .line 466
    :cond_3
    return v4
.end method

.method public isPunctuationOrSymbol(I)Z
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 489
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPunctuationOrSymbolOrSingleCharEmoji(I)Z
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPunctuationSymbols:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 497
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mEmojis:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mEmojis:Ljava/util/ArrayList;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 500
    :cond_1
    return v0
.end method

.method protected isSentenceSeparator(I)Z
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 482
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidAlphabeticChar(I)Z
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->isValidChineseChar(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isValidChineseChar(I)Z
    .locals 1

    .prologue
    .line 622
    const/16 v0, 0x3000

    if-lt p1, v0, :cond_1

    const v0, 0x9fa5

    if-gt p1, v0, :cond_1

    .line 628
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 623
    :cond_1
    const v0, 0xe000

    if-lt p1, v0, :cond_2

    const v0, 0xeeb1

    if-le p1, v0, :cond_0

    .line 624
    :cond_2
    const v0, 0xf3a0

    if-lt p1, v0, :cond_3

    const v0, 0xf7ed

    if-le p1, v0, :cond_0

    .line 625
    :cond_3
    const v0, 0xef50

    if-lt p1, v0, :cond_4

    const v0, 0xfe6b

    if-le p1, v0, :cond_0

    .line 626
    :cond_4
    const v0, 0xff01

    if-lt p1, v0, :cond_5

    const v0, 0xff5e

    if-le p1, v0, :cond_0

    .line 627
    :cond_5
    const v0, 0xffe0

    if-lt p1, v0, :cond_6

    const v0, 0xffe5

    if-le p1, v0, :cond_0

    .line 631
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteSpace(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 436
    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWordCompounder(I)Z
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordCompounders:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mWordCompounders:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 525
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isWordSeparator(I)Z
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 475
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onApplicationUnbind()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    .line 795
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->closing()V

    .line 797
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->close()V

    .line 800
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 725
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onDetachedFromWindow()V

    .line 726
    return-void
.end method

.method protected onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z
    .locals 6

    .prologue
    const/16 v5, -0x65

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 579
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 581
    return v3

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 585
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z

    move-result v0

    return v0

    .line 588
    :cond_2
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x64

    invoke-interface {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 592
    return v3

    .line 594
    :cond_3
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, -0x14

    if-ne v0, v1, :cond_4

    .line 596
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 597
    return v3

    .line 599
    :cond_4
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, -0x13

    if-ne v0, v1, :cond_5

    .line 600
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleMultitapToggle()V

    .line 601
    return v3

    .line 603
    :cond_5
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 608
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 609
    return v3

    .line 612
    :cond_6
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-ne v0, v1, :cond_7

    .line 613
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 614
    return v3

    .line 617
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z

    move-result v0

    return v0
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected resumeSpeech(II)V
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->resumeSpeech(Lcom/nuance/flext9_OEM/input/InputView;II)V

    .line 839
    :cond_0
    return-void
.end method

.method protected sendBackspace(I)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/IME;->sendBackspace(I)V

    .line 532
    :cond_0
    return-void
.end method

.method protected sendKeyChar(C)V
    .locals 0

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->sendOurKeyChar(C)V

    .line 556
    return-void
.end method

.method public sendOurKeyChar(C)V
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    .line 546
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 550
    :cond_0
    return-void
.end method

.method protected sendSpace()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->sendKeyChar(C)V

    .line 562
    :cond_0
    return-void
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesViewShown(Z)V

    .line 409
    return-void
.end method

.method public setCurrentInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 83
    return-void
.end method

.method protected setEmojiKeyboard()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 641
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 642
    return-void
.end method

.method public setPhoneKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    .line 574
    return-void
.end method

.method protected setSpeechViewHost()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->setHost(Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 845
    :cond_0
    return-void
.end method

.method protected speechChooseCandidate(I)V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->speechChooseCandidate(I)V

    .line 885
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    .line 162
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 164
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mCompletionOn:Z

    .line 165
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPreferExplicit:Z

    .line 166
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInURLEmail:Z

    .line 167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    .line 167
    if-nez v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURIField()Z

    move-result v0

    .line 167
    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v1

    .line 167
    :cond_1
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mPredictionOff:Z

    .line 171
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->multitapClearInvalid()V

    .line 172
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->loadSettings()V

    .line 174
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->updateExtractedText()V

    .line 177
    :cond_2
    return-void

    .line 164
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 165
    goto :goto_1

    :cond_5
    move v0, v1

    .line 166
    goto :goto_2
.end method

.method protected startSpeech(II)V
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->startSpeech(Lcom/nuance/flext9_OEM/input/InputView;II)V

    .line 833
    :cond_0
    return-void
.end method

.method protected stopSpeech()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->stopSpeech()V

    .line 851
    :cond_0
    return-void
.end method

.method public switchViewNow()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->switchViewNow()V

    .line 722
    return-void
.end method

.method public updateCandidateViewWithEmoji()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method protected updateExtractedText()V
    .locals 5

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    if-eqz v0, :cond_1

    .line 814
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    .line 815
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 817
    if-nez v0, :cond_0

    .line 818
    return-void

    .line 821
    :cond_0
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_1

    .line 823
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v0, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->updateText(Ljava/lang/String;II)V

    .line 827
    :cond_1
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 8

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputView;->createSpeechWrapper()Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    .line 219
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mSpeechWrapper:Lcom/nuance/flext9_OEM/input/SpeechWrapper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/flext9_OEM/input/SpeechWrapper;->updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V

    .line 224
    :cond_0
    return-void
.end method

.method public updateStatusBarIcon()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 729
    return-void
.end method

.method public useKDBHardkey(Z)V
    .locals 0

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputView;->mIsUseHardkey:Z

    .line 751
    return-void
.end method
