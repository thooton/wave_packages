.class public Lcom/nuance/flext9_OEM/input/AlphaInputView;
.super Lcom/nuance/flext9_OEM/input/InputView;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/AlphaInputView$1;,
        Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;,
        Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;,
        Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;,
        Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;
    }
.end annotation


# static fields
.field private static final synthetic -com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I = null

.field private static final LAST_INPUT_BACKSPACE:I = 0x4

.field private static final LAST_INPUT_SPACE:I = 0x3

.field private static final LAST_INPUT_TAP:I = 0x1

.field private static final LAST_INPUT_TRACE:I = 0x2

.field private static final LAST_INPUT_UNDEFINED:I = 0x0

.field private static final MSG_HIDE_BLANK_WORD_LIST:I = 0x64

.field private static final MSG_PROFILING:I = 0x4

.field private static final NULL_CHAR:C = '\u0000'

.field private static final RESELECT_WORD_CANDIATES_DISPLAY_THRESHOLD:I = 0x1

.field static final TAG:Ljava/lang/String; = "XT9IME.AlphaInputView"

.field private static final WORD_CANDIDATES_DISPLAY_THRESHOLD:I = 0x1


# instance fields
.field private final PROFILING:Z

.field private final PROFILING_USING_HANDLE_CHAR_METHOD:I

.field private final PROFILING_USING_HANDLE_PREDICTION_METHOD:I

.field private final PROFILING_USING_JNI_METHOD:I

.field private clearKeyWhenCharBgHighlight:Z

.field private mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

.field private mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

.field private mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

.field protected mAutoCorrectionMode:I

.field protected mAutoPunctuationOn:Z

.field private mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mColorRecommended:Landroid/text/style/ForegroundColorSpan;

.field private mColorSpecialLanguage:Landroid/text/style/ForegroundColorSpan;

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private final mContextBuffer:Ljava/lang/StringBuilder;

.field private mCurrentShiftState:I

.field private final mExactWordSpan:Landroid/text/style/StyleSpan;

.field private mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordListErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field mHandler:Landroid/os/Handler;

.field private mHardKeyInputMode:Ljava/lang/String;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mIsEmojiInCandidateView:Z

.field private mIsPointerVisible:Z

.field protected mKeyboardInputSuggestionOn:Z

.field private mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

.field protected mLangModel:Z

.field protected mLastInput:I

.field private mLastKeyTime:J

.field private mLastSelEnd:I

.field private mLastSelStart:I

.field private final mMultiTapSpan:Landroid/text/style/StyleSpan;

.field protected mNextWordPredictionOn:Z

.field private mOldShiftState:I

.field private final mRecaptureBuffer:Ljava/lang/StringBuilder;

.field protected mRecaptureOn:Z

.field private mSaveShiftedState:I

.field private mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

.field protected mSuggestedWord:Landroid/text/SpannableStringBuilder;

.field private final mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

.field protected mTextInputPredictionOn:Z

.field protected mTraceInputSuggestionOn:Z

.field private mUnShiftableState:I

.field private mUpdatingInline:Z

.field protected mWordCompletionPoint:I

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field protected mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/AlphaInputView;)Lcom/nuance/flext9_OEM/input/CandidatesListView;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    return-object v0
.end method

.method private static synthetic -getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/AlphaInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUpdatingInline:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/AlphaInputView;Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->HandleDoubleTabRecapture(Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->profilingWordList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3195
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 76
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 77
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mMultiTapSpan:Landroid/text/style/StyleSpan;

    .line 80
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 106
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 111
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    .line 112
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    .line 113
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUnShiftableState:I

    .line 117
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsPointerVisible:Z

    .line 123
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 3341
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING:Z

    .line 3344
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_HANDLE_CHAR_METHOD:I

    .line 3347
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_HANDLE_PREDICTION_METHOD:I

    .line 3351
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_JNI_METHOD:I

    .line 3196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3199
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 76
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 77
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mMultiTapSpan:Landroid/text/style/StyleSpan;

    .line 80
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 106
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 111
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    .line 112
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    .line 113
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUnShiftableState:I

    .line 117
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsPointerVisible:Z

    .line 123
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 3341
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING:Z

    .line 3344
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_HANDLE_CHAR_METHOD:I

    .line 3347
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_HANDLE_PREDICTION_METHOD:I

    .line 3351
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->PROFILING_USING_JNI_METHOD:I

    .line 3200
    return-void
.end method

.method private AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2110
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    if-eqz v0, :cond_1

    .line 2111
    :cond_0
    return-void

    .line 2115
    :cond_1
    const/16 v0, 0x41

    .line 2114
    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2117
    if-eqz v0, :cond_4

    .line 2119
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2121
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2123
    if-lez v0, :cond_4

    .line 2124
    :goto_0
    if-lez v0, :cond_2

    .line 2125
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2124
    if-eqz v2, :cond_2

    .line 2126
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2129
    :cond_2
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2130
    add-int/lit8 v0, v0, 0x1

    .line 2133
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 2137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_4

    .line 2138
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2136
    if-eqz v1, :cond_4

    .line 2139
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2136
    if-eqz v1, :cond_4

    .line 2140
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2140
    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addWordToUserDictionary([CI)Z

    .line 2145
    :cond_4
    return-void
.end method

.method private HandleDoubleTabRecapture(Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 283
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 290
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->reselectToReplace()V

    .line 291
    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 292
    invoke-virtual {p0, v0, v3, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZI)V

    .line 293
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 294
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 296
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 297
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 298
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 300
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelStart:I

    .line 301
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelEnd:I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->isHighlightedTextSpeechDictated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mContextBuffer:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 302
    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->reselectToReplace()V

    .line 306
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 307
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 308
    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 309
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 310
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 309
    invoke-virtual {p0, v0, v3, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZI)V

    .line 311
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 312
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 314
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelStart:I

    .line 315
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelEnd:I

    goto :goto_0
.end method

.method private PreloadUDBWords()V
    .locals 1

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 3334
    return-void
.end method

.method private changeContext(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_1

    .line 2307
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2308
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->breakContext()V

    .line 2313
    :cond_1
    :goto_0
    return-void

    .line 2310
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setContext([C)V

    goto :goto_0
.end method

.method private changeToShiftState(I)Z
    .locals 2

    .prologue
    .line 3024
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3025
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    .line 3027
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3028
    iput p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUnShiftableState:I

    .line 3029
    const/4 v0, 0x1

    return v0

    .line 3031
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2587
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2589
    if-eqz p1, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v0

    .line 2595
    if-eqz v0, :cond_2

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2603
    :cond_1
    :goto_0
    return-void

    .line 2599
    :cond_2
    const-string/jumbo v0, ""

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2644
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZI)V

    .line 2646
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 2647
    return-void
.end method

.method private composingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1116
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1117
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    .line 1116
    if-eqz v1, :cond_2

    .line 1118
    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1121
    :cond_2
    return v0
.end method

.method private composingStateOnPressEnter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1125
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1126
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1129
    :cond_1
    return v0
.end method

.method private endInputSession()V
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->breakContext()V

    .line 610
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->finish()V

    .line 612
    :cond_0
    return-void
.end method

.method private extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2223
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2224
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2226
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2228
    if-eqz v0, :cond_2

    .line 2231
    const/16 v1, 0xc0

    .line 2230
    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2234
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2233
    if-eqz v1, :cond_2

    .line 2236
    invoke-direct {p0, v0, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 2238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2239
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2242
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2241
    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2243
    invoke-direct {p0, v0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 2247
    :cond_0
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2248
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2252
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2253
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2264
    :cond_2
    return-void
.end method

.method private extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2421
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2423
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2428
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2429
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    .line 2430
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2435
    :cond_0
    if-gez v3, :cond_2

    .line 2437
    return-void

    .line 2429
    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 2441
    :cond_2
    const/4 v0, 0x1

    .line 2442
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2443
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2452
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 2453
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2461
    :cond_4
    return-void

    .line 2445
    :cond_5
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isValidAlphabeticChar(I)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v1

    .line 2448
    goto :goto_2

    .line 2442
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private getShiftState()I
    .locals 1

    .prologue
    .line 3002
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    const/4 v0, 0x2

    return v0

    .line 3004
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3005
    const/4 v0, 0x1

    return v0

    .line 3008
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleAutoPunct()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2396
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2397
    if-eqz v0, :cond_0

    .line 2398
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2399
    const-string/jumbo v1, "."

    .line 2400
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2401
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 2402
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2404
    :cond_0
    return-void
.end method

.method private handleBackspaceDuringMultitap()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1439
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1445
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_0

    .line 1446
    return v2

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1453
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendClearKey()V

    .line 1456
    :cond_1
    return v2

    .line 1460
    :cond_2
    return v1
.end method

.method private handleEnter(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3998
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingStateOnPressEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3999
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4000
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4001
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-virtual {p0, v2, v1, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 4002
    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4008
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 4009
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 4010
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 4013
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 4015
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 4016
    return-void

    .line 4004
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 4005
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    goto :goto_0
.end method

.method private handleExplicitRecapture()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2333
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2335
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-nez v0, :cond_1

    .line 2336
    :cond_0
    return v1

    .line 2335
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 2340
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 2339
    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 2342
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2343
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2344
    return v1

    .line 2347
    :cond_2
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2348
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2350
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->recapture()V

    .line 2352
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeContext(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 2354
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2355
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2356
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2358
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/flext9_OEM/input/AlphaInput;->isSymbolUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2359
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4, v3, v6, v6}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    .line 2354
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    :cond_3
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4, v3, v6, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    goto :goto_1

    .line 2365
    :cond_4
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    move-result v0

    if-lt v0, v6, :cond_5

    .line 2366
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->appendCharacterTyped(Ljava/lang/CharSequence;)V

    .line 2367
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2368
    return v6

    .line 2370
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2371
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 2372
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2373
    return v1
.end method

.method private handlePrediction(I[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2495
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2497
    if-nez v0, :cond_0

    .line 2498
    return-void

    .line 2504
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "abc"

    if-eq v1, v2, :cond_5

    .line 2505
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->canDoRecapture()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2504
    if-eqz v1, :cond_5

    .line 2505
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 2504
    if-eqz v1, :cond_5

    .line 2506
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleExplicitRecapture()Z

    .line 2547
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_4

    .line 2551
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2553
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 2555
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    if-eqz v0, :cond_3

    .line 2556
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearComposingState()V

    .line 2559
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKdbId()I

    move-result v1

    .line 2560
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v3

    .line 2559
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->processKey(III)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2562
    int-to-char v0, p1

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->characterTyped(C)V

    .line 2565
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 2572
    :cond_4
    :goto_1
    return-void

    .line 2508
    :cond_5
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 2512
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2514
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2515
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2517
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2519
    if-eqz v0, :cond_1

    .line 2520
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2522
    if-eqz v0, :cond_1

    .line 2523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2524
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2522
    if-eqz v0, :cond_1

    .line 2525
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_1

    .line 2526
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    if-eqz v0, :cond_1

    .line 2527
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentShiftState()I

    move-result v0

    .line 2529
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 2530
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2529
    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2531
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    .line 2533
    if-ne v0, v4, :cond_1

    .line 2534
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setShiftState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2541
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2569
    :cond_6
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackCharOnFailProcess(C)V

    goto :goto_1
.end method

.method private handlePunctOrSymbol(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2607
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 2608
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    .line 2609
    return-void

    .line 2612
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2614
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2615
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2617
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2619
    if-eqz v1, :cond_1

    .line 2620
    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2632
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 2633
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 2635
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    .line 2636
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 2638
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2640
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 2641
    return-void

    .line 2624
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2626
    if-eqz v0, :cond_1

    .line 2628
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method private handleRecapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2270
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2272
    if-eqz v2, :cond_0

    .line 2273
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 2274
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 2273
    invoke-direct {p0, v3, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 2283
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 2284
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2283
    if-eqz v3, :cond_0

    .line 2285
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2287
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2289
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 2290
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/EditState;->appendCharacterTyped(Ljava/lang/CharSequence;)V

    .line 2298
    :goto_0
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v1, v0

    .line 2302
    :cond_0
    return v1

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2294
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    move v0, v1

    .line 2295
    goto :goto_0
.end method

.method private handleShiftPressedHold()V
    .locals 2

    .prologue
    .line 3122
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3123
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleShift()V

    .line 3127
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3128
    return-void

    .line 3125
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleCapsLock()V

    goto :goto_0
.end method

.method private handleSwitchPagePressedHold()V
    .locals 2

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setSwitchPageKeyLock()V

    .line 3137
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 3138
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3139
    return-void

    .line 3134
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSwitchPage()V

    goto :goto_0
.end method

.method private handleWhiteSpaces(I)V
    .locals 2

    .prologue
    .line 2576
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 2577
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    .line 2578
    return-void

    .line 2582
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePunctOrSymbol(I)V

    .line 2583
    return-void
.end method

.method private isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2378
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v2

    move v1, v2

    .line 2381
    :goto_0
    if-ge v0, v3, :cond_3

    .line 2382
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2383
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbolOrSingleCharEmoji(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2384
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2386
    :cond_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDoubleCharEmoji(CC)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2387
    add-int/lit8 v1, v1, 0x2

    .line 2388
    add-int/lit8 v0, v0, 0x1

    .line 2381
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2392
    :cond_3
    if-lt v1, v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private isWordAcceptingSymbol(C)Z
    .locals 1

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbolOrSingleCharEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3144
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    .line 3143
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoCorrectionMode:I

    .line 3148
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordCompletionPoint:I

    .line 3156
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    .line 3158
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoCorrectionMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordCompletionPoint:I

    if-eq v0, v1, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 3161
    const-string/jumbo v0, "auto_punctuation"

    .line 3160
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoPunctuationOn:Z

    .line 3165
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_4

    .line 3166
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mPredictionOff:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3165
    :goto_1
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 3167
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mPredictionOff:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    .line 3169
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    :cond_1
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 3170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3171
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 3170
    :goto_3
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureOn:Z

    .line 3172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3173
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 3172
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 3192
    return-void

    :cond_3
    move v0, v2

    .line 3158
    goto :goto_0

    :cond_4
    move v0, v2

    .line 3165
    goto :goto_1

    :cond_5
    move v0, v2

    .line 3167
    goto :goto_2

    :cond_6
    move v0, v2

    .line 3170
    goto :goto_3
.end method

.method private logPerfData(Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;)V
    .locals 8

    .prologue
    .line 3472
    const-string/jumbo v1, "PerfLog"

    .line 3475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \n================================================================\nProfiling method = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3476
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mProfilingMethod:I

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3477
    const-string/jumbo v2, "("

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3478
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mProfilingMethod:I

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->profilingMethodDescription(I)Ljava/lang/String;

    move-result-object v2

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3479
    const-string/jumbo v2, ")"

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3479
    const-string/jumbo v2, "\nLanguage = "

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3479
    const-string/jumbo v2, "0x0"

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3480
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mLanguageId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3481
    const-string/jumbo v2, "\nKdb = "

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3481
    const-string/jumbo v2, "0x0"

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3482
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mKdbId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3483
    const-string/jumbo v2, "\nCorrection level = "

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3483
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mCorrectionLevel:I

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3484
    const-string/jumbo v2, "\nWord completion point = "

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3485
    iget v2, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mWordCompletionPoint:I

    .line 3475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3474
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mPerfWords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3488
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3489
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;

    .line 3490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n\tPerfLog for spelling \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3493
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3494
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;

    .line 3495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n\t\tKey = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3496
    const-string/jumbo v5, ", word list count = "

    .line 3495
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3496
    iget v5, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mWordCount:I

    .line 3495
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3497
    const-string/jumbo v5, ", time = "

    .line 3495
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3497
    iget-wide v6, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mSpellTime:J

    .line 3495
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3497
    const-string/jumbo v4, "ms"

    .line 3495
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3500
    :cond_1
    return-void
.end method

.method private moveHighlightToHeardOrTail(Z)Z
    .locals 7

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3848
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v0, :cond_1

    .line 3855
    :cond_0
    return v5

    .line 3849
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 3850
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 3848
    if-nez v0, :cond_0

    .line 3850
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3858
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 3860
    if-nez p1, :cond_4

    .line 3861
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 3862
    return v5

    .line 3864
    :cond_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 3865
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3866
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3867
    if-eqz v0, :cond_3

    .line 3868
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3869
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 3870
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 3869
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3871
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollEnd()V

    .line 3887
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3888
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3889
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3891
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3893
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3894
    return v5

    .line 3874
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    if-nez v0, :cond_5

    .line 3875
    return v5

    .line 3877
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 3878
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3879
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3880
    if-eqz v0, :cond_3

    .line 3881
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3882
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 3883
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 3882
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3884
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollHead()V

    goto :goto_0
.end method

.method private moveHighlightToNearCandidate(I)V
    .locals 7

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3898
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v1, :cond_1

    .line 3901
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3902
    return-void

    .line 3899
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 3900
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 3898
    if-nez v1, :cond_0

    .line 3905
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3906
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3907
    return-void

    .line 3910
    :cond_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 3912
    const/16 v1, 0x16

    if-ne p1, v1, :cond_6

    .line 3913
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v0

    .line 3917
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_7

    .line 3918
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 3922
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3923
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/Int;->inc(I)I

    .line 3929
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3930
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3931
    if-eqz v0, :cond_4

    .line 3932
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3934
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    .line 3935
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 3934
    invoke-virtual {v0, v3, v4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3937
    :cond_4
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 3938
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3939
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v0

    .line 3938
    if-eqz v0, :cond_a

    .line 3941
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    .line 3948
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletionOn:Z

    :goto_4
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 3949
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3950
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3951
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3953
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3955
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3957
    return-void

    .line 3914
    :cond_6
    const/16 v1, 0x15

    if-ne p1, v1, :cond_c

    .line 3915
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 3919
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    if-gtz v0, :cond_3

    .line 3920
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    goto/16 :goto_1

    .line 3924
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3925
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/Int;->dec(I)I

    goto/16 :goto_2

    .line 3927
    :cond_9
    return-void

    .line 3942
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3943
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v0

    .line 3942
    if-eqz v0, :cond_5

    .line 3945
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_3

    :cond_b
    move v0, v2

    .line 3948
    goto :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private moveHightlightToNearPage(I)V
    .locals 7

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 3786
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v1, :cond_1

    .line 3789
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3790
    return-void

    .line 3787
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 3788
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 3786
    if-nez v1, :cond_0

    .line 3792
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3793
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3794
    return-void

    .line 3798
    :cond_2
    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    .line 3799
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3803
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 3805
    if-nez v0, :cond_5

    .line 3806
    return-void

    .line 3800
    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_3

    .line 3801
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 3807
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3808
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v0

    .line 3810
    if-ne v0, v2, :cond_6

    .line 3811
    return-void

    .line 3812
    :cond_6
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 3813
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3814
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3815
    if-eqz v0, :cond_7

    .line 3816
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3817
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 3818
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 3817
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3819
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    .line 3837
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3838
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3839
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3841
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3843
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3845
    return-void

    .line 3822
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v0

    .line 3824
    if-ne v0, v2, :cond_9

    .line 3825
    return-void

    .line 3826
    :cond_9
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 3827
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3828
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3829
    if-eqz v0, :cond_7

    .line 3830
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3831
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 3832
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 3831
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3833
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_1
.end method

.method private perfornamceForOneWord(Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 3436
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3437
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3438
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;

    .line 3441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3443
    iget v1, p2, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mProfilingMethod:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 3464
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mSpellTime:J

    .line 3465
    iput v1, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mWordCount:I

    goto :goto_0

    .line 3445
    :pswitch_0
    iget-char v1, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {p0, v1, v8}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleCharKey(I[I)V

    .line 3446
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    goto :goto_1

    .line 3450
    :pswitch_1
    iget-char v1, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-direct {p0, v1, v8}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePrediction(I[I)V

    .line 3451
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    goto :goto_1

    .line 3455
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget v6, p2, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mKdbId:I

    iget-char v7, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {v1, v6, v7, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->processKey(III)Z

    .line 3456
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3457
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3458
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 3459
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 3458
    invoke-virtual {v1, v6, v7}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;

    move-result-object v1

    .line 3460
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 3468
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    .line 3469
    return-void

    .line 3443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private postDelayHideWordListViewMsg()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 3979
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3980
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 3981
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    .line 3980
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3982
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    return-void
.end method

.method private postDoubleTapRecaptureMsg(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeDoubleTapRecaptureMsg()V

    .line 251
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v2, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;

    invoke-direct {v2, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/16 v3, 0x9

    .line 251
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 253
    const-wide/16 v2, 0xa

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 254
    return-void
.end method

.method private postToastMsg(I)V
    .locals 4

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeToastMsg(I)V

    .line 240
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    .prologue
    .line 2149
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->spaceKey()V

    .line 2151
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 2153
    if-eqz p1, :cond_0

    .line 2154
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->selectedWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2157
    :cond_0
    return-void
.end method

.method private profiling(Ljava/util/Iterator;Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3427
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3428
    new-instance v1, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;-><init>(Ljava/lang/String;)V

    .line 3429
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;->mPerfWords:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3430
    invoke-direct {p0, v1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->perfornamceForOneWord(Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneWord;Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfData;)V

    goto :goto_0

    .line 3432
    :cond_0
    return-void
.end method

.method private profilingMethodDescription(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3504
    packed-switch p1, :pswitch_data_0

    .line 3515
    const-string/jumbo v0, "huh?"

    return-object v0

    .line 3506
    :pswitch_0
    const-string/jumbo v0, "With symbol/number check and list view display overhead, and java/JNI and word copies"

    return-object v0

    .line 3509
    :pswitch_1
    const-string/jumbo v0, "With list view displaying overhead, and java/JNI and word copies"

    return-object v0

    .line 3512
    :pswitch_2
    const-string/jumbo v0, "No symbol/numb and list view display overhead, but with java/JNI and word copies"

    return-object v0

    .line 3504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private profilingWordList()V
    .locals 0

    .prologue
    .line 3387
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/high16 v10, -0x10000

    const/4 v1, 0x0

    .line 3246
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->InlineStringAlpha:[I

    const v2, 0x7f0e0001

    .line 3245
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3248
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 3250
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3251
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 3253
    packed-switch v4, :pswitch_data_0

    .line 3250
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3255
    :pswitch_1
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 3259
    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 3261
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    .line 3260
    invoke-static {v5, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 3263
    const/4 v5, 0x2

    aget v6, v4, v5

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 3264
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 3265
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    .line 3264
    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mFGWordListErrorSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 3268
    :pswitch_2
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 3272
    :pswitch_3
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 3273
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3272
    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 3276
    :pswitch_4
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 3289
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3293
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->WordListView:[I

    .line 3292
    const v2, 0x7f0e0003

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3294
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    .line 3296
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 3297
    const/4 v2, 0x4

    .line 3296
    invoke-virtual {v0, v2, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mColorSpecialLanguage:Landroid/text/style/ForegroundColorSpan;

    .line 3298
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3299
    return-void

    .line 3253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 2323
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeContext(Ljava/lang/CharSequence;)V

    .line 2324
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKdbId()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2325
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2324
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->recaptureWord(I[CI)Z

    move-result v0

    return v0

    .line 2328
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    return-void
.end method

.method private removeDoubleTapRecaptureMsg()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    return-void
.end method

.method private removeToastMsg(I)V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/nuance/flext9_OEM/input/QuickToast;->hide()V

    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    return-void
.end method

.method private rollBackShiftState()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3035
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    if-ne v0, v2, :cond_0

    .line 3036
    const/4 v0, 0x0

    return v0

    .line 3038
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3039
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mOldShiftState:I

    .line 3040
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUnShiftableState:I

    .line 3041
    const/4 v0, 0x1

    return v0
.end method

.method private sendBackCharOnFailProcess(C)V
    .locals 1

    .prologue
    .line 2407
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 2408
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 2411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 2412
    return-void
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 2176
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 2178
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordCompletionPoint:I

    .line 2177
    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    .line 2179
    const-string/jumbo v0, "ambig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 2181
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoCorrectionMode:I

    .line 2180
    invoke-virtual {v0, v3, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    .line 2188
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    const-string/jumbo v0, "abc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 2185
    const/4 v1, 0x0

    .line 2184
    invoke-virtual {v0, v3, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    goto :goto_0
.end method

.method private setMultitapOrAmbigMode()V
    .locals 2

    .prologue
    .line 2161
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2163
    const/4 v1, 0x0

    .line 2162
    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 2165
    const-string/jumbo v1, "ambig"

    .line 2164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2162
    if-eqz v0, :cond_1

    .line 2166
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleAmbigMode()V

    .line 2167
    const-string/jumbo v0, "abc"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 2169
    const-string/jumbo v1, "ambig"

    .line 2168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    const-string/jumbo v0, "ambig"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setToUnShiftPage()V
    .locals 2

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-nez v0, :cond_1

    .line 2928
    :cond_0
    return-void

    .line 2930
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 2929
    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2931
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_3

    .line 2932
    :cond_2
    return-void

    .line 2933
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setToUnShiftPage()V

    .line 2935
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 2936
    return-void
.end method

.method private showStartOfWordCandidateList()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 191
    invoke-static {}, Lcom/nuance/flext9_OEM/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 194
    new-array v3, v6, [C

    move v0, v1

    .line 195
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    .line 197
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    aget-char v5, v3, v1

    invoke-virtual {v4, v5}, Lcom/nuance/flext9_OEM/input/AlphaInput;->isSymbolUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4, v3, v6, v6}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    .line 195
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4, v3, v6, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    goto :goto_1

    .line 204
    :cond_1
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->compose()V

    .line 205
    invoke-virtual {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 206
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 208
    :cond_2
    return-void
.end method

.method private startInputSession()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 556
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->start(Landroid/content/Context;)Z

    .line 560
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setLanguage(I)Z

    .line 561
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 562
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordCompletionPoint:I

    .line 561
    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    .line 563
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 564
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoCorrectionMode:I

    .line 563
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    .line 565
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 568
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const/4 v0, 0x1

    .line 567
    :goto_0
    const/16 v2, 0x68

    .line 565
    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setAttribute(II)Z

    .line 596
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelStart:I

    .line 597
    iput v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelEnd:I

    .line 599
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 605
    :cond_0
    return-void

    .line 570
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleKeyboardMode()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1433
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->abortKey()V

    .line 1434
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 1435
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 1436
    return-void
.end method

.method private updateCandidateContainerLayout()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 1103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->invalidate()V

    .line 1104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->requestLayout()V

    .line 1105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->requestLayout()V

    .line 1106
    return-void
.end method

.method private updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2465
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-nez v0, :cond_1

    .line 2467
    if-nez p1, :cond_0

    .line 2468
    return-void

    .line 2471
    :cond_0
    const/16 v0, 0x80

    .line 2470
    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2473
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2475
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 2482
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2484
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setContext([C)V

    .line 2491
    :cond_1
    :goto_0
    return-void

    .line 2487
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->breakContext()V

    goto :goto_0
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2890
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2894
    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoCap:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_2

    .line 2895
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2897
    if-eqz v0, :cond_6

    .line 2898
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 2902
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentShiftState()I

    move-result v3

    .line 2903
    if-eq v3, v2, :cond_5

    .line 2904
    const/16 v3, 0x1000

    if-eq v0, v3, :cond_4

    .line 2905
    if-nez v0, :cond_3

    .line 2911
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setShiftState(I)V

    .line 2916
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setShifted(Z)Z

    .line 2920
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 2922
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSwitchPageState()V

    .line 2923
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 2924
    return-void

    :cond_2
    move v0, v1

    .line 2894
    goto :goto_0

    .line 2906
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 2908
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private updateSuggestions(I)I
    .locals 1

    .prologue
    .line 2650
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(IZ)I

    move-result v0

    return v0
.end method

.method private updateSuggestions$wave(IZ)I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/16 v7, 0x121

    const/4 v6, 0x0

    .line 2657
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v0, :cond_1

    .line 2658
    :cond_0
    return v6

    .line 2665
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2666
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2667
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2668
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2672
    if-eqz p2, :cond_8

    .line 2673
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    .line 2674
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 2675
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 2676
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v6}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 2681
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2689
    if-lez v3, :cond_d

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2700
    if-eqz p2, :cond_9

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2708
    :goto_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2711
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mPreferExplicit:Z

    if-eqz v1, :cond_2

    .line 2712
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v4, 0x900

    if-ne v1, v4, :cond_2

    .line 2713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2714
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2711
    if-eqz v0, :cond_2

    .line 2716
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2717
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2718
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v6}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 2719
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2720
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2723
    :cond_2
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->compose()V

    .line 2728
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2734
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboardSwitcherMode()Ljava/lang/String;

    move-result-object v0

    .line 2735
    const-string/jumbo v1, "abc"

    .line 2734
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2736
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v6}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 2737
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2738
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2740
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v1, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2745
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 2746
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    .line 2747
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 2746
    invoke-virtual {v0, v1, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2749
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2750
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 2749
    invoke-virtual {v0, v1, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2819
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearKeyWhenCharBgHighlight:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 2820
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mMultiTapSpan:Landroid/text/style/StyleSpan;

    .line 2821
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 2820
    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2825
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2829
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 2830
    const-wide/16 v4, 0xa

    .line 2829
    invoke-virtual {v0, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2832
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUpdatingInline:Z

    .line 2834
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2836
    if-eqz v0, :cond_6

    .line 2837
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2844
    :cond_6
    if-lt v3, p1, :cond_7

    .line 2845
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 2846
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    .line 2845
    invoke-virtual {p0, v0, v6, v1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZIZ)V

    .line 2849
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 2850
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletionOn:Z

    :goto_3
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 2859
    :cond_7
    :goto_4
    return v3

    .line 2678
    :cond_8
    iput-boolean v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    .line 2679
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    goto/16 :goto_0

    .line 2703
    :cond_9
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getInlineText(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 2755
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->isInlineKnown()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2756
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2766
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2767
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2768
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    .line 2767
    if-eqz v1, :cond_4

    move-object v1, v0

    .line 2782
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 2784
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 2786
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2782
    invoke-virtual {v1, v4, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 2800
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2802
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_4

    .line 2803
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2804
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2803
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    .line 2808
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 2810
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 2812
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2808
    invoke-virtual {v1, v4, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 2850
    goto :goto_3

    .line 2855
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    goto/16 :goto_4
.end method

.method private updateSwitchPageState()V
    .locals 2

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 2939
    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2941
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    .line 2942
    :cond_0
    return-void

    .line 2943
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2944
    return-void

    .line 2945
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isUnShiftPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2946
    return-void

    .line 2947
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2948
    return-void

    .line 2950
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setToUnShiftPage()V

    .line 2951
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 2953
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 2954
    return-void
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1979
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 1980
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1981
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1982
    return-void
.end method

.method public clearComposingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4078
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4080
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 4087
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 4088
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 4089
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    .line 4090
    return-void

    .line 4082
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4083
    if-eqz v0, :cond_0

    .line 4084
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method public clearCurrentActiveWord()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 439
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 440
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 441
    return-void
.end method

.method protected clearedAllKeys()V
    .locals 2

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2864
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2865
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2866
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2867
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 2868
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->clearAllKeys()Z

    .line 2871
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUpdatingInline:Z

    .line 2874
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2875
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 325
    new-instance v0, Lcom/nuance/flext9_OEM/input/SoundEffects;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/SoundEffects;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    .line 326
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/SoundEffects;->addSound(I)V

    .line 328
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/AlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 330
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 333
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 334
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setInputView(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 336
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 343
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIWindowManager:Landroid/view/IWindowManager;

    .line 344
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->readStyles(Landroid/content/Context;)V

    .line 345
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    .line 340
    const-string/jumbo v1, "parameter input is not an instance of AlphaInput"

    .line 339
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 349
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;Ljava/util/ArrayList;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 351
    return-void
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-nez v0, :cond_0

    .line 380
    return-object v2

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentFocusedPackage()Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 387
    const v1, 0x7f03000b

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    .line 388
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    .line 389
    const v1, 0x7f0d001a

    .line 388
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    .line 391
    const v2, 0x7f0d001d

    .line 390
    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    .line 395
    const v1, 0x7f0d001c

    .line 394
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 417
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->initViews()V

    .line 418
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->requestLayout()V

    .line 421
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 426
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/flext9_OEM/input/WordListViewContainer;

    return-object v0
.end method

.method public cycleShiftAndNumberMode()V
    .locals 2

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2966
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 2967
    const-string/jumbo v1, "number"

    .line 2966
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2965
    if-eqz v0, :cond_1

    .line 2968
    :cond_0
    const-string/jumbo v0, "number"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 2981
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->updatePersistMap()V

    .line 2982
    return-void

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2971
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 2972
    const-string/jumbo v1, "number"

    .line 2971
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2970
    if-eqz v0, :cond_2

    .line 2973
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 2974
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 2977
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 2978
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 2979
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->destroy()V

    .line 358
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 360
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->destroy()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SoundEffects;->release()V

    .line 366
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 367
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    .line 368
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 369
    return-void
.end method

.method public destroyInstance()V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->destroyInstance()V

    .line 374
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mPredictionOff:Z

    if-eqz v0, :cond_4

    .line 787
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 789
    if-nez p1, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 791
    return-void

    .line 794
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 795
    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 796
    aget-object v0, p1, v2

    .line 797
    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 801
    :cond_3
    invoke-virtual {p0, v3, v1, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZI)V

    .line 803
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 806
    :cond_4
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeAllMessages()V

    .line 623
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-nez v0, :cond_0

    .line 624
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->endSession()V

    .line 628
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->closing()V

    .line 630
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 631
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->endInputSession()V

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 635
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 642
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 652
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 653
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 654
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 655
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 657
    :cond_0
    return-void
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    return-object v1
.end method

.method public getHardKeyboardLayout(I[C)I
    .locals 1

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 3779
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getHardKeyboardLayout(I[C)I

    move-result v0

    return v0

    .line 3781
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInputMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3525
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    .line 3524
    if-eqz v0, :cond_2

    .line 3527
    :cond_1
    const-string/jumbo v0, "number"

    return-object v0

    .line 3530
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3531
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 3532
    const-string/jumbo v1, "number"

    .line 3531
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3530
    if-eqz v0, :cond_3

    .line 3533
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    return-object v0

    .line 3536
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3537
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v1, :cond_4

    .line 3538
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3539
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getKdbId()I

    move-result v1

    and-int/lit16 v1, v1, 0xf00

    const/16 v2, 0x600

    if-ne v1, v2, :cond_4

    .line 3540
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3542
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 3541
    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v1

    .line 3540
    if-eqz v1, :cond_4

    .line 3543
    const-string/jumbo v0, "abc"

    return-object v0

    .line 3547
    :cond_4
    return-object v0
.end method

.method public getInputModeAndShiftState()Ljava/util/AbstractMap$SimpleEntry;
    .locals 3
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
    .line 3519
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getInputMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIsEmojiShownInCandidateView()Z
    .locals 1

    .prologue
    .line 4455
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getIsEmojiShownInCandidateView()Z

    move-result v0

    return v0
.end method

.method public getKdbId()I
    .locals 2

    .prologue
    .line 3557
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3558
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_1

    .line 3560
    const-string/jumbo v1, "abc"

    .line 3559
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3561
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getKdbId()I

    move-result v0

    return v0

    .line 3564
    :cond_0
    const-string/jumbo v1, "abc"

    .line 3563
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3565
    const v0, 0xffff

    return v0

    .line 3569
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v0

    return v0
.end method

.method public getKeyboardSwitcherMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4025
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    .line 4024
    if-eqz v0, :cond_1

    .line 4027
    :cond_0
    const-string/jumbo v0, "number"

    return-object v0

    .line 4030
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4031
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4032
    const-string/jumbo v1, "number"

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4030
    if-eqz v0, :cond_2

    .line 4033
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    return-object v0

    .line 4036
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4037
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v1, :cond_3

    .line 4038
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4039
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getKdbId()I

    move-result v1

    and-int/lit16 v1, v1, 0xf00

    const/16 v2, 0x600

    if-ne v1, v2, :cond_3

    .line 4040
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4042
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 4041
    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v1

    .line 4040
    if-eqz v1, :cond_3

    .line 4043
    const-string/jumbo v0, "abc"

    return-object v0

    .line 4047
    :cond_3
    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    return v0
.end method

.method public getShiftStateForPopup()I
    .locals 1

    .prologue
    .line 4071
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftedState()I

    move-result v0

    return v0
.end method

.method public getShiftStateOfUnShiftableKey()I
    .locals 1

    .prologue
    .line 3059
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUnShiftableState:I

    return v0
.end method

.method public getShiftedState()I
    .locals 1

    .prologue
    .line 3737
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    return v0
.end method

.method protected getSoftKeyboardShiftState()I
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3013
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3014
    const/4 v0, 0x2

    return v0

    .line 3015
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3016
    const/4 v0, 0x1

    return v0

    .line 3019
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 3727
    return-object p0
.end method

.method public getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;
    .locals 1

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1470
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1472
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1474
    :cond_0
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1476
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackspace(I)V

    .line 1477
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1479
    return v3

    .line 1482
    :cond_1
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 1484
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1485
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1486
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1487
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 1489
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1490
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1491
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1492
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackspace(I)V

    .line 1493
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1494
    return v3

    .line 1497
    :cond_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "abc"

    if-eq v1, v2, :cond_6

    .line 1498
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->canDoRecapture()Z

    move-result v1

    .line 1497
    if-eqz v1, :cond_6

    .line 1499
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 1500
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 1497
    if-eqz v1, :cond_6

    .line 1500
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureOn:Z

    .line 1497
    if-eqz v1, :cond_6

    .line 1501
    const/4 v1, 0x3

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1502
    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    .line 1512
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 1513
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1514
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1538
    :cond_4
    :goto_0
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1540
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1541
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackspace(I)V

    .line 1542
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1543
    return v3

    .line 1515
    :cond_5
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 1516
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1517
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1518
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_0

    .line 1547
    :cond_6
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleBackspaceDuringMultitap()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1550
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->ismKeyboardInputSuggestionOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1552
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 1553
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearKeyWhenCharBgHighlight:Z

    .line 1554
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 1555
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearKeyWhenCharBgHighlight:Z

    .line 1558
    :cond_7
    return v3

    .line 1562
    :cond_8
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 1600
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendClearKey()V

    .line 1602
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 1618
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 1619
    return v3

    .line 1622
    :cond_9
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1625
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1627
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1628
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1629
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1630
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1631
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1633
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1634
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->hideCandidateView()V

    .line 1643
    return v3

    .line 1645
    :cond_b
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 1646
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1649
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1651
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1652
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1653
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1654
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 1655
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1657
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1658
    return v3

    .line 1661
    :cond_d
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1663
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackspace(I)V

    .line 1664
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1665
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1666
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1667
    return v3
.end method

.method public handleCharKey(I[I)V
    .locals 6

    .prologue
    const/16 v1, 0x600

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1009
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    .line 1015
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeToastMsg(I)V

    .line 1020
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1022
    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->end()V

    .line 1024
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1029
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 1086
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1087
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1090
    :cond_3
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1090
    if-eqz v0, :cond_4

    .line 1092
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v0

    .line 1090
    if-eqz v0, :cond_4

    .line 1093
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleKeyboardMode()V

    .line 1096
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1097
    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1099
    :cond_5
    return-void

    .line 1032
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1033
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1034
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1036
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mMultiTapSpan:Landroid/text/style/StyleSpan;

    .line 1037
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x121

    .line 1036
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1040
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1050
    :cond_7
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1052
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleWhiteSpaces(I)V

    goto :goto_0

    .line 1053
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1057
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePrediction(I[I)V

    goto :goto_0

    .line 1058
    :cond_9
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1059
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 1058
    if-eqz v0, :cond_a

    .line 1060
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    if-ne v0, v1, :cond_a

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePrediction(I[I)V

    goto/16 :goto_0

    .line 1064
    :cond_a
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v0, :cond_b

    .line 1065
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDigit(C)Z

    move-result v0

    .line 1064
    if-eqz v0, :cond_b

    .line 1066
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_b

    .line 1067
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1068
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getKdbId()I

    move-result v0

    and-int/lit16 v0, v0, 0xf00

    if-ne v0, v1, :cond_b

    .line 1069
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePrediction(I[I)V

    goto/16 :goto_0

    .line 1070
    :cond_b
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1071
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_c

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1070
    if-eqz v0, :cond_e

    .line 1080
    :cond_d
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_0

    .line 1082
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePrediction(I[I)V

    goto/16 :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 1882
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1883
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeAllMessages()V

    .line 1885
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 1886
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->endSession()V

    .line 1891
    return-void
.end method

.method public handleDelete(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1672
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1674
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1676
    :cond_0
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1678
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1680
    return v2

    .line 1684
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleBackspaceDuringMultitap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1685
    return v2

    .line 1689
    :cond_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 1690
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendClearKey()V

    .line 1692
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1708
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 1709
    return v2

    .line 1712
    :cond_3
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1715
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1717
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1718
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1719
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1720
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1721
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1723
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1724
    return v2

    .line 1726
    :cond_5
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1727
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1730
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1732
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1733
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1734
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1735
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1736
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1738
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1739
    return v2

    .line 1742
    :cond_7
    iput v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1744
    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1745
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 1746
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1747
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1748
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1750
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1751
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1752
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->backSpace()V

    .line 1753
    return v2
.end method

.method public handleDirectionKeyForWordList(I)V
    .locals 0

    .prologue
    .line 3960
    packed-switch p1, :pswitch_data_0

    .line 3970
    :goto_0
    return-void

    .line 3963
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->moveHighlightToNearCandidate(I)V

    goto :goto_0

    .line 3967
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->moveHightlightToNearPage(I)V

    goto :goto_0

    .line 3960
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleKey(IZI)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 812
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeToastMsg(I)V

    .line 820
    sparse-switch p1, :sswitch_data_0

    .line 883
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    move-result v0

    return v0

    .line 824
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isTraceInputEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v0

    return v0

    .line 830
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 831
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v0

    .line 830
    if-eqz v0, :cond_2

    .line 833
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    .line 835
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    if-lt v0, v3, :cond_1

    .line 836
    sput v4, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    .line 838
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipDisplayCount:I

    if-ge v0, v5, :cond_1

    .line 839
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    .line 838
    if-eqz v0, :cond_1

    .line 840
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 841
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->postToastMsg(I)V

    .line 865
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v0

    return v0

    .line 847
    :cond_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    if-ne v0, v2, :cond_1

    .line 848
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v0

    .line 847
    if-eqz v0, :cond_1

    .line 851
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    .line 853
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 854
    sput v4, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    .line 856
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipDisplayCount:I

    if-ge v0, v5, :cond_1

    .line 857
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 856
    if-eqz v0, :cond_1

    .line 858
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipDisplayCount:I

    .line 859
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->postToastMsg(I)V

    goto :goto_0

    .line 868
    :sswitch_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_3

    .line 869
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->postToastMsg(I)V

    .line 872
    :cond_3
    return v2

    .line 875
    :sswitch_2
    if-nez p2, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->startSpeech(II)V

    .line 879
    :cond_4
    return v2

    .line 820
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0x9 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 894
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_3

    .line 903
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 909
    const/4 v0, 0x1

    return v0

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 912
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_2

    .line 916
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 919
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 920
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 926
    :cond_3
    return v1
.end method

.method public handleMultitapToggle()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2036
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v2, :cond_2

    .line 2040
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2041
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2042
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2045
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleAmbigMode()V

    .line 2046
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    .line 2048
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 2049
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2050
    const-string/jumbo v4, "abc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2049
    :cond_1
    invoke-static {v3, v0}, Lcom/nuance/flext9_OEM/input/Settings;->setMultitapMode(Landroid/content/SharedPreferences;Z)V

    .line 2052
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2053
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 2055
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 2057
    :cond_2
    return-void
.end method

.method protected handlePreTrace(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1138
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 1139
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setShiftState(I)V

    .line 1142
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setShifted(Z)Z

    .line 1144
    :cond_0
    return-void
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 2959
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 2960
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 2961
    return-void
.end method

.method public handleShiftPress()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 3063
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    if-ne v0, v2, :cond_0

    .line 3065
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    .line 3067
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    if-eq v0, v1, :cond_1

    .line 3072
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3074
    :cond_0
    return-void

    .line 3070
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public handleShiftRelease()V
    .locals 2

    .prologue
    .line 3047
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3048
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    .line 3050
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3051
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    .line 3052
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 3054
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3056
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1760
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->onMultitapTimeout()V

    .line 1762
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setMultitapMode(Z)V

    .line 1763
    return v1

    .line 1765
    :cond_0
    iput v9, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1767
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1769
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v2, :cond_1

    if-nez v6, :cond_2

    .line 1771
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendSpace()V

    .line 1772
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1774
    return v1

    .line 1777
    :cond_2
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1788
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    if-nez v2, :cond_8

    .line 1789
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1790
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1791
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1792
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v4

    invoke-virtual {p0, v4, v3, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    move v5, v2

    .line 1819
    :goto_0
    if-eqz p1, :cond_a

    if-ge p2, v8, :cond_a

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAutoPunctuationOn:Z

    if-eqz v2, :cond_a

    .line 1820
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 1819
    if-eqz v2, :cond_f

    .line 1821
    invoke-interface {v6, v9, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1830
    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v8, :cond_b

    .line 1831
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1832
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 1839
    :goto_1
    if-eqz v7, :cond_d

    .line 1840
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    .line 1839
    if-eqz v4, :cond_d

    .line 1841
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1839
    if-eqz v4, :cond_d

    .line 1842
    if-eqz v3, :cond_d

    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbolOrSingleCharEmoji(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1839
    if-eqz v4, :cond_d

    .line 1843
    if-eqz v2, :cond_3

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDoubleCharEmoji(CC)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1839
    if-eqz v2, :cond_f

    .line 1844
    :cond_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleAutoPunct()V

    .line 1849
    :goto_2
    if-eqz v0, :cond_e

    .line 1850
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 1851
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 1857
    :goto_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1858
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v0

    .line 1857
    if-eqz v0, :cond_4

    .line 1859
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleKeyboardMode()V

    .line 1862
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1863
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1865
    if-eqz v5, :cond_5

    .line 1866
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    .line 1867
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1870
    :cond_5
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1872
    return v1

    .line 1793
    :cond_6
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 1794
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 1797
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1799
    if-eqz v2, :cond_10

    .line 1800
    const/4 v0, -0x2

    invoke-virtual {p0, v0, v2, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1801
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1802
    return v1

    :cond_7
    move v5, v0

    .line 1794
    goto/16 :goto_0

    .line 1806
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 1807
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-virtual {p0, v2, v0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1810
    :cond_9
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendKeyChar(C)V

    .line 1811
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1812
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1813
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1814
    return v1

    :cond_a
    move v0, v1

    .line 1820
    goto/16 :goto_2

    .line 1833
    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v9, :cond_c

    .line 1834
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1835
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1836
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto/16 :goto_1

    :cond_c
    move v2, v0

    move v3, v0

    move v4, v0

    .line 1833
    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 1843
    goto/16 :goto_2

    .line 1853
    :cond_e
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_2

    :cond_10
    move v5, v0

    goto/16 :goto_0
.end method

.method public handleSwitchPage()V
    .locals 2

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSwitchPage()V

    .line 2989
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 2990
    return-void
.end method

.method public handleTrace(Ljava/util/ArrayList;)V
    .locals 11
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
    const/4 v10, -0x1

    const/16 v9, 0x77

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1163
    sput v1, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    .line 1165
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1167
    if-nez v4, :cond_0

    .line 1168
    return-void

    .line 1171
    :cond_0
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1176
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 1179
    const/16 v0, 0x64

    invoke-interface {v4, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1184
    if-nez v0, :cond_1

    .line 1185
    return-void

    .line 1188
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1190
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I

    move-result v0

    .line 1193
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    move v2, v3

    .line 1252
    :goto_0
    if-eqz v2, :cond_3

    .line 1254
    sput v1, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    .line 1256
    iget v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 1258
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_13

    .line 1259
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentPage()I

    move-result v0

    .line 1263
    :goto_1
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v6}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v6

    if-eq v6, v10, :cond_2

    .line 1264
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1265
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v6}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v6

    .line 1266
    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1265
    invoke-virtual {p0, v6, v7, v8}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1269
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    .line 1271
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 1273
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v5, :cond_3

    .line 1274
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentPage()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 1276
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 1275
    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1277
    iget v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x900

    if-ne v5, v6, :cond_3

    .line 1278
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setToCustomPage(I)V

    .line 1280
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 1285
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1288
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 1289
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v6

    iget v7, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 1288
    invoke-virtual {v5, v6, p1, v7}, Lcom/nuance/flext9_OEM/input/AlphaInput;->processTrace(ILjava/util/ArrayList;I)Z

    move-result v5

    .line 1290
    if-eqz v5, :cond_12

    .line 1291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v6, v5}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1296
    if-eqz v2, :cond_f

    .line 1297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v6

    .line 1296
    if-eqz v6, :cond_f

    .line 1299
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->sendBackspace(I)V

    .line 1329
    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    move-result v0

    if-gtz v0, :cond_5

    .line 1334
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/SoundEffects;->play(I)V

    .line 1340
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1342
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    .line 1344
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1354
    return-void

    .line 1195
    :cond_6
    if-ne v0, v3, :cond_7

    .line 1196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    .line 1197
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-virtual {p0, v0, v2, v8}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    move v2, v1

    goto/16 :goto_0

    .line 1201
    :cond_7
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9

    .line 1202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    if-ne v0, v10, :cond_9

    .line 1204
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1206
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1205
    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1201
    if-eqz v0, :cond_16

    .line 1207
    const-string/jumbo v0, "_@"

    .line 1211
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInURLEmail:Z

    if-nez v2, :cond_e

    .line 1213
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_d

    .line 1216
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v3

    :goto_4
    if-ltz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1218
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 1216
    if-eqz v6, :cond_15

    .line 1221
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_c

    .line 1222
    const/4 v6, 0x3

    if-lt v2, v6, :cond_8

    .line 1223
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_b

    .line 1218
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 1206
    goto/16 :goto_0

    :cond_a
    move v2, v0

    .line 1216
    goto/16 :goto_0

    .line 1224
    :cond_b
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_8

    .line 1225
    add-int/lit8 v6, v2, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_8

    .line 1226
    add-int/lit8 v6, v2, -0x3

    .line 1225
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_8

    :cond_c
    move v0, v1

    .line 1232
    goto :goto_5

    .line 1238
    :cond_d
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1237
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v2, v1

    .line 1239
    goto/16 :goto_0

    .line 1244
    :cond_e
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_14

    move v2, v1

    .line 1246
    goto/16 :goto_0

    .line 1301
    :cond_f
    if-nez v2, :cond_4

    .line 1302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1305
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    .line 1301
    if-eqz v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_10

    .line 1309
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentPage()I

    move-result v1

    .line 1311
    :cond_10
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->clearKey()Z

    .line 1312
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    .line 1313
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1312
    invoke-virtual {p0, v0, v2, v8}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1314
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    if-eqz v0, :cond_11

    .line 1315
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentPage()I

    move-result v0

    if-eq v1, v0, :cond_11

    .line 1317
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 1316
    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1318
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x900

    if-ne v0, v2, :cond_11

    .line 1319
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setToCustomPage(I)V

    .line 1321
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 1324
    :cond_11
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v1

    .line 1325
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 1324
    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->processTrace(ILjava/util/ArrayList;I)Z

    goto/16 :goto_2

    .line 1337
    :cond_12
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSoundEffects:Lcom/nuance/flext9_OEM/input/SoundEffects;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/SoundEffects;->play(I)V

    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto/16 :goto_1

    :cond_14
    move v2, v3

    goto/16 :goto_0

    :cond_15
    move v2, v0

    goto/16 :goto_0

    :cond_16
    move v2, v1

    goto/16 :goto_0
.end method

.method public hideCandidateView()V
    .locals 2

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentViewWithinBrowser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setIsCursorPointer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2885
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 2886
    return-void

    .line 2882
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method isDigit(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1003
    const/16 v1, 0x30

    if-gt v1, p1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHoldingShiftKey()Z
    .locals 2

    .prologue
    .line 3077
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentShiftState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecialLanguage()Z
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isSpecialLanguage(I)Z

    move-result v0

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3219
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v1, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    .line 3219
    if-eqz v1, :cond_0

    .line 3221
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3219
    :cond_0
    return v0
.end method

.method public ismKeyboardInputSuggestionOn()Z
    .locals 1

    .prologue
    .line 4417
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    return v0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 3227
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->onApplicationUnbind()V

    .line 3235
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 3236
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 3242
    return-void
.end method

.method public onHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3579
    invoke-static {}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 3682
    :goto_0
    :pswitch_0
    :sswitch_0
    return v2

    .line 3581
    :pswitch_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 3583
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getShiftState()I

    move-result v0

    sget v3, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_UNSHIFTABLE:I

    if-ne v0, v3, :cond_5

    .line 3584
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_5

    .line 3585
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isHardKeyboardCapsState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3586
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeToShiftState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 3594
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getShiftState()I

    move-result v3

    sget v4, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_NEVER:I

    if-ne v3, v4, :cond_0

    .line 3595
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeToShiftState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3598
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getShiftState()I

    move-result v2

    sget v3, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_ALWAYS:I

    if-ne v2, v3, :cond_1

    .line 3599
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeToShiftState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 3602
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v2

    invoke-virtual {p0, v2, v6}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleCharKey(I[I)V

    .line 3603
    if-eqz v0, :cond_2

    .line 3604
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->rollBackShiftState()Z

    .line 3607
    :cond_2
    return v1

    .line 3589
    :cond_3
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->changeToShiftState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 3590
    goto :goto_1

    .line 3609
    :pswitch_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v0

    .line 3611
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3615
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleBackspace(I)Z

    move-result v0

    return v0

    .line 3613
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleDelete(I)Z

    move-result v0

    return v0

    .line 3623
    :sswitch_3
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleEnter(I)V

    goto :goto_0

    .line 3627
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleShift()V

    .line 3628
    return v1

    .line 3634
    :sswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3635
    iget-wide v6, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastKeyTime:J

    const-wide/16 v8, 0x2ee

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v2, v1

    .line 3636
    :cond_4
    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastKeyTime:J

    .line 3637
    invoke-virtual {p0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v0

    return v0

    .line 3642
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleDirectionKeyForWordList(I)V

    goto/16 :goto_0

    .line 3669
    :sswitch_7
    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handlePunctOrSymbol(I)V

    .line 3670
    return v1

    .line 3680
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    move-result v0

    return v0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 3579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 3611
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x1c -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_4
        0x3c -> :sswitch_4
        0x3d -> :sswitch_0
        0x3e -> :sswitch_5
        0x3f -> :sswitch_0
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3204
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3205
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleShiftPressedHold()V

    .line 3206
    return v3

    .line 3207
    :cond_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, -0x18

    if-ne v0, v1, :cond_1

    .line 3208
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleSwitchPagePressedHold()V

    .line 3209
    return v3

    .line 3211
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z

    move-result v0

    return v0
.end method

.method public onMultitapTimeout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2062
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2064
    if-nez v2, :cond_0

    .line 2065
    return-void

    .line 2069
    :cond_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v3, :cond_1

    .line 2070
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 2072
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2073
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v2, v1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2074
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2101
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2102
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 2104
    return-void

    .line 2077
    :cond_3
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mMultiTapSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 2082
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v2, v3, v0}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2085
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2086
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 2087
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2086
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 2088
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2089
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 2090
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    .line 2093
    :cond_4
    :goto_1
    if-eqz v0, :cond_2

    .line 2094
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2095
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {p0, v1, v0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2096
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2089
    goto :goto_1
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 936
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 939
    :cond_0
    return-void

    .line 938
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mTextInputPredictionOn:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 942
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 943
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 944
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 946
    :cond_3
    invoke-interface {v0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 947
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 998
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 999
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1000
    return-void

    .line 952
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 953
    if-gt v1, v4, :cond_5

    .line 954
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    .line 953
    if-nez v2, :cond_5

    .line 955
    const/4 v2, 0x2

    if-le v1, v2, :cond_7

    add-int/lit8 v2, v1, -0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 956
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 955
    invoke-virtual {p0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDoubleCharEmoji(CC)Z

    move-result v1

    .line 953
    if-eqz v1, :cond_7

    .line 957
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 958
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 959
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 966
    :goto_1
    invoke-interface {v0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 967
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    .line 968
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 962
    :cond_6
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 963
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 964
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    goto :goto_1

    .line 969
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 970
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 969
    if-eqz v1, :cond_8

    .line 972
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 973
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 974
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 975
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 976
    invoke-interface {v0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 977
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->punctuationOrSymbols()V

    .line 978
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 980
    :cond_8
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_9

    .line 981
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 982
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 983
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 987
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMiniKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 988
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 989
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentPopUpShiftState()I

    move-result v3

    .line 988
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    .line 995
    :goto_2
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(I)I

    goto/16 :goto_0

    .line 991
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 992
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v3

    .line 991
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->addExplicit([CII)Z

    goto :goto_2
.end method

.method public resetShiftStat()V
    .locals 0

    .prologue
    .line 3723
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1912
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1913
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1916
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nuance/flext9_OEM/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1919
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    .line 1920
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 1922
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1924
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v1, v1, p1

    .line 1926
    if-eqz v0, :cond_1

    .line 1928
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1931
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1932
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1934
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1936
    return-void

    .line 1939
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 1941
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsEmojiInCandidateView:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1939
    if-eqz v1, :cond_5

    .line 1943
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1944
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1945
    :cond_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->wordSelected(IZ)V

    .line 1953
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearedAllKeys()V

    .line 1959
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1960
    if-eqz v0, :cond_4

    .line 1961
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1964
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 1966
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->clearSuggestions()V

    .line 1967
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1968
    return-void

    .line 1955
    :cond_5
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->speechChooseCandidate(I)V

    goto :goto_0
.end method

.method public sendClearKey()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1896
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1897
    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1898
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1899
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1900
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 1899
    if-ne v0, v1, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->clearKey()Z

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->clearKey()Z

    .line 1907
    return-void
.end method

.method public sendKeyToApplication(I)V
    .locals 3

    .prologue
    .line 4063
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4064
    if-eqz v0, :cond_0

    .line 4065
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4066
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4068
    :cond_0
    return-void
.end method

.method public setBackLayout()V
    .locals 0

    .prologue
    .line 4060
    return-void
.end method

.method public setInputMode(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3686
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 3687
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 3688
    const-string/jumbo v1, "number"

    .line 3687
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3689
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 3690
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 3691
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3693
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 3694
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 3696
    const/4 v0, 0x0

    return v0
.end method

.method public setInputModeToNumDefault()V
    .locals 2

    .prologue
    .line 4424
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4425
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4426
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    .line 4427
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_0

    .line 4428
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 4430
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V
    .locals 4

    .prologue
    .line 1419
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 1421
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1422
    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v1

    .line 1426
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v2

    .line 1425
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setKeyboardLayoutsize(II)V

    .line 1427
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v1

    .line 1428
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v3

    .line 1427
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->initTrace(III)V

    .line 1429
    return-void
.end method

.method public setLanguage(I)Z
    .locals 1

    .prologue
    .line 3701
    const/4 v0, 0x0

    return v0
.end method

.method public setLayout(I)Z
    .locals 1

    .prologue
    .line 4053
    const/4 v0, 0x0

    return v0
.end method

.method public setSuggestions(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setSuggestions(Ljava/util/List;ZIZ)V

    .line 260
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZIZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZIZ)V

    .line 267
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 268
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentViewWithinBrowser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsPointerVisible:Z

    if-eq v0, v1, :cond_1

    .line 270
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsPointerVisible:Z

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setIsCursorPointer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 267
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->startSession()V

    .line 471
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 472
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 473
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->removeDoubleTapRecaptureMsg()V

    .line 476
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 479
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->loadSettings()V

    .line 482
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 486
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v0, :cond_8

    .line 487
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 488
    const-string/jumbo v1, "abc"

    .line 487
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 489
    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 500
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->startInputSession()V

    .line 506
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 510
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setShiftState(I)V

    .line 520
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setToUnShiftPage()V

    .line 523
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 524
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 527
    :cond_5
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 528
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 529
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 532
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_6

    .line 533
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 536
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->resumeSpeech(II)V

    .line 539
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_7

    .line 540
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 539
    if-eqz v0, :cond_7

    .line 541
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->postDelayShowingStartOfWordCandidate()V

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 552
    return-void

    .line 493
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    goto :goto_0
.end method

.method public switchFromSymbolMode()V
    .locals 1

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 3733
    return-void
.end method

.method public toggleAmbigMode()V
    .locals 4

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2196
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getKdbId()I

    move-result v0

    and-int/lit16 v0, v0, 0xf00

    .line 2197
    const/16 v1, 0x600

    .line 2196
    if-ne v0, v1, :cond_1

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 2199
    const-string/jumbo v1, "abc"

    .line 2198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 2201
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 2202
    const-string/jumbo v3, "ambig"

    .line 2201
    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 2200
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 2218
    :cond_1
    :goto_0
    return-void

    .line 2203
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v0, :cond_3

    .line 2204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 2205
    const-string/jumbo v1, "abc"

    .line 2204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2203
    if-eqz v0, :cond_3

    .line 2207
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 2206
    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    .line 2203
    if-eqz v0, :cond_3

    .line 2208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 2209
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 2210
    const-string/jumbo v3, "ambig"

    .line 2209
    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 2208
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    goto :goto_0

    .line 2211
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 2212
    const-string/jumbo v1, "ambig"

    .line 2211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 2214
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 2215
    const-string/jumbo v3, "abc"

    .line 2214
    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 2213
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    goto :goto_0
.end method

.method protected toggleCapsLock()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3089
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3090
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 3093
    if-ne v0, v1, :cond_0

    .line 3094
    const/4 v0, 0x0

    move v1, v0

    .line 3098
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3100
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 3103
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3104
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 3105
    return-void
.end method

.method protected toggleHardKeyCapsLock()V
    .locals 2

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->isHardKeyboardCapsState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3112
    const/4 v1, 0x2

    .line 3111
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 3116
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 3117
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 3118
    return-void

    .line 3113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCandidateViewWithEmoji()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4437
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isLongMessageField()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4438
    return-void

    .line 4440
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4441
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->onMultitapTimeout()V

    .line 4442
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setMultitapMode(Z)V

    .line 4450
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 4451
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions(IZ)I

    .line 4452
    return-void

    .line 4443
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4445
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4446
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4447
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4448
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateInputMode(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 4109
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboardSwitcherMode()Ljava/lang/String;

    move-result-object v0

    .line 4110
    const-string/jumbo v1, "number"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setInputModeToNumDefault()V

    .line 4112
    return-void

    .line 4113
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4114
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    add-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4116
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4117
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    .line 4127
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 4128
    return-void

    .line 4119
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4120
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    .line 4121
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    add-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4122
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4123
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4124
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4125
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto :goto_0
.end method

.method public updateMultitapDeadkey(Z)V
    .locals 6

    .prologue
    const/16 v5, -0x13

    const/16 v4, -0x15

    const/4 v3, 0x0

    .line 1987
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_0

    .line 1988
    return-void

    .line 1991
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 1993
    if-nez v0, :cond_1

    .line 1994
    return-void

    .line 1999
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v1, :cond_4

    .line 2000
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 2001
    if-eqz v0, :cond_2

    .line 2003
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v4, v1, v3

    .line 2028
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2029
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 2031
    :cond_3
    return-void

    .line 2006
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    .line 2007
    const-string/jumbo v2, "abc"

    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2008
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2010
    const/4 v1, 0x2

    .line 2009
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 2011
    if-eqz v0, :cond_2

    .line 2012
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v4, v1, v3

    goto :goto_0

    .line 2015
    :cond_5
    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 2016
    if-eqz v0, :cond_2

    .line 2017
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v5, v1, v3

    goto :goto_0

    .line 2021
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 2022
    if-eqz v0, :cond_2

    .line 2023
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v5, v1, v3

    goto :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 664
    invoke-super/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/InputView;->updateSelection(IIIIII)V

    .line 667
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 668
    if-nez v2, :cond_0

    .line 669
    return-void

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v3, :cond_4

    .line 682
    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 683
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    .line 684
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 686
    :cond_1
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/AlphaInput;->breakContext()V

    .line 693
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 696
    if-ne p3, p6, :cond_3

    if-eq p4, p6, :cond_7

    .line 700
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUpdatingInline:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_9

    .line 701
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 703
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 711
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 712
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 714
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 767
    :cond_4
    :goto_2
    iput p3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelStart:I

    .line 768
    iput p4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelEnd:I

    .line 773
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mUpdatingInline:Z

    .line 774
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 777
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-nez v0, :cond_5

    .line 778
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 780
    :cond_5
    return-void

    .line 687
    :cond_6
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getKeyCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 688
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->breakContextState()Z

    move-result v4

    .line 687
    if-eqz v4, :cond_2

    .line 690
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/AlphaInput;->breakContext()V

    goto :goto_0

    .line 696
    :cond_7
    const/4 v3, -0x1

    if-ne p6, v3, :cond_8

    if-eqz p4, :cond_3

    :cond_8
    move v0, v1

    goto :goto_1

    .line 715
    :cond_9
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureOn:Z

    if-eqz v0, :cond_4

    .line 716
    if-le p4, p3, :cond_4

    .line 717
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelStart:I

    if-eq v0, p3, :cond_4

    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mLastSelEnd:I

    if-eq v0, p4, :cond_4

    .line 723
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 726
    invoke-interface {v2, p4, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 728
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 729
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 728
    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 733
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v3, p4, p3

    if-le v0, v3, :cond_a

    .line 735
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 736
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 737
    sub-int v4, p4, p3

    .line 736
    sub-int/2addr v3, v4

    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 740
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_a
    invoke-interface {v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 750
    if-nez p3, :cond_b

    if-nez p3, :cond_d

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 751
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 753
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 754
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 753
    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->postDoubleTapRecaptureMsg(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 763
    :cond_c
    :goto_3
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 757
    :cond_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 759
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_3
.end method

.method protected updateShiftStateFromOptionDialog(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4131
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboardSwitcherMode()Ljava/lang/String;

    move-result-object v0

    .line 4132
    const-string/jumbo v1, "Abc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4133
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_4

    .line 4135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4136
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4137
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4138
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4139
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    .line 4413
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 4414
    return-void

    .line 4142
    :cond_3
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4144
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4145
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4147
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4149
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4150
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4151
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4152
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto :goto_0

    .line 4156
    :cond_4
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4157
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 4156
    if-eqz v1, :cond_6

    .line 4158
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4159
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4160
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto :goto_0

    .line 4162
    :cond_6
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4164
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4165
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4167
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4169
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4171
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4172
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4174
    :cond_7
    const-string/jumbo v1, "ABC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "ES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4175
    :cond_8
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_b

    .line 4177
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4178
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4179
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4180
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4181
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4184
    :cond_a
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4186
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4187
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4189
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4191
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4192
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4193
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4194
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4198
    :cond_b
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 4199
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 4198
    if-eqz v1, :cond_d

    .line 4200
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4201
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4202
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4203
    :cond_d
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4205
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4206
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4208
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4210
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4212
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4213
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4215
    :cond_e
    const-string/jumbo v1, "123"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4216
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4217
    const-string/jumbo v0, "ambig"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4218
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4219
    :cond_f
    const-string/jumbo v1, "T9en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "T9es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4220
    :cond_10
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_13

    .line 4222
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4223
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4224
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4225
    const-string/jumbo v0, "number"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4226
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4229
    :cond_11
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4230
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4229
    if-eqz v0, :cond_2

    .line 4232
    :cond_12
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4234
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4237
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4238
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4239
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4240
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4244
    :cond_13
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4245
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4246
    const-string/jumbo v0, "number"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4247
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4248
    :cond_14
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 4249
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4248
    if-eqz v0, :cond_2

    .line 4251
    :cond_15
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4253
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4254
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4256
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4257
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4258
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4259
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4261
    :cond_16
    const-string/jumbo v1, "T9En"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "T9Es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4262
    :cond_17
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_1a

    .line 4264
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4265
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4266
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4267
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4268
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4271
    :cond_18
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4272
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4271
    if-eqz v0, :cond_2

    .line 4274
    :cond_19
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4275
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4277
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4279
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4280
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4281
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4282
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4286
    :cond_1a
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4287
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4288
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4289
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4291
    :cond_1b
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 4292
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4291
    if-eqz v0, :cond_2

    .line 4294
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4295
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4297
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4299
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4300
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4301
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4302
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4304
    :cond_1d
    const-string/jumbo v1, "T9EN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "T9ES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4305
    :cond_1e
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_21

    .line 4307
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4308
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4309
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4310
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4311
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4314
    :cond_1f
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4315
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4314
    if-eqz v0, :cond_2

    .line 4317
    :cond_20
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4318
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4320
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4322
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4323
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4324
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4325
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4329
    :cond_21
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4330
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4331
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4332
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4334
    :cond_22
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4335
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4334
    if-eqz v0, :cond_2

    .line 4337
    :cond_23
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4338
    const-string/jumbo v0, "abc"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4340
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4342
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4343
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4344
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4345
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4347
    :cond_24
    const-string/jumbo v1, "abc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4348
    :cond_25
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    const-string/jumbo v2, "number"

    if-ne v1, v2, :cond_28

    .line 4350
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 4351
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 4352
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 4351
    if-eqz v1, :cond_27

    .line 4353
    :cond_26
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4354
    const-string/jumbo v0, "number"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4355
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4358
    :cond_27
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4360
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4362
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4363
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4365
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4366
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4367
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4368
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4372
    :cond_28
    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 4373
    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 4372
    if-eqz v1, :cond_2d

    .line 4374
    :cond_29
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    .line 4375
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4376
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4377
    const-string/jumbo v0, "number"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4378
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->cycleShiftAndNumberMode()V

    goto/16 :goto_0

    .line 4380
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4381
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4383
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_2c

    .line 4384
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2b

    .line 4385
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4386
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 4388
    :cond_2b
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->toggleAmbigMode()V

    .line 4389
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboardSwitcherMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 4390
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nuance/flext9_OEM/input/Settings;->setMultitapMode(Landroid/content/SharedPreferences;Z)V

    .line 4391
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 4392
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateStatusBarIcon()V

    .line 4393
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 4395
    :cond_2c
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4396
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4397
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0

    .line 4400
    :cond_2d
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4402
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 4404
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 4405
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mHardKeyInputMode:Ljava/lang/String;

    .line 4407
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->handleMultitapToggle()V

    .line 4408
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleShiftState()V

    .line 4409
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mSaveShiftedState:I

    .line 4410
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->invalidateAll()V

    goto/16 :goto_0
.end method

.method public updateStatusBarIcon()V
    .locals 1

    .prologue
    .line 3081
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isHoldingShiftKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3082
    return-void

    .line 3084
    :cond_0
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->updateStatusBarIcon()V

    .line 3085
    return-void
.end method

.method public useKDBHardkey(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3744
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eq v0, p1, :cond_5

    .line 3745
    const/4 v0, 0x1

    .line 3749
    :goto_0
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 3751
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v2, :cond_0

    .line 3752
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mAlphInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v2, p1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->useKDBHardkey(Z)V

    .line 3755
    :cond_0
    if-eqz v0, :cond_1

    .line 3756
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v0, :cond_3

    .line 3757
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3759
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3760
    const-string/jumbo v1, "ambig"

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3757
    if-eqz v0, :cond_2

    .line 3761
    const-string/jumbo v0, "abc"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 3775
    :cond_1
    :goto_1
    return-void

    .line 3762
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3763
    const-string/jumbo v1, "ambig"

    .line 3762
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3764
    const-string/jumbo v0, "ambig"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_1

    .line 3767
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3768
    const-string/jumbo v1, "ambig"

    .line 3767
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3769
    const-string/jumbo v0, "ambig"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_1

    .line 3771
    :cond_4
    const-string/jumbo v0, "abc"

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

# Wave: hook around the stock updateSuggestions (now updateSuggestions$wave).
.method private updateSuggestions(IZ)I
    .registers 5
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateSuggestions$wave(IZ)I
    move-result v0
    invoke-static {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/WaveFrame;->suggestionsUpdated(Ljava/lang/Object;IZI)V
    return v0
.end method
