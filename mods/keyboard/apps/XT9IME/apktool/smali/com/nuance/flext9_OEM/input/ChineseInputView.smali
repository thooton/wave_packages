.class public Lcom/nuance/flext9_OEM/input/ChineseInputView;
.super Lcom/nuance/flext9_OEM/input/InputView;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/ChineseInputView$1;,
        Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;
    }
.end annotation


# static fields
.field private static final synthetic -com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I = null

.field private static final INPUT_MODE_BPMF:I = 0x1

.field private static final INPUT_MODE_CANGJIE:I = 0x3

.field private static final INPUT_MODE_PINYIN:I = 0x0

.field private static final INPUT_MODE_QUICK_CANGJIE:I = 0x4

.field private static final INPUT_MODE_STROKE:I = 0x2


# instance fields
.field private mAutoCorrectionMode:I

.field private mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

.field private mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mDefaultSpellIndex:Lcom/nuance/flext9_OEM/input/Int;

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

.field private mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

.field private mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field public mInsertText:Ljava/lang/StringBuilder;

.field private mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

.field private mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

.field private mMutitapMaxKeyTimeout:Z

.field private mRememberedLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

.field private mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

.field private mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

.field private mUnderline:Landroid/text/style/UnderlineSpan;


# direct methods
.method private static synthetic -getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

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
    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/ChineseInputView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateContext()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->addMoreSuggestions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hideSpellView()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/ChineseInputView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateSuggestions()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 898
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 42
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 44
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 76
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mRememberedLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 899
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 42
    new-instance v0, Lcom/nuance/flext9_OEM/input/Int;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/flext9_OEM/input/Int;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 44
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 76
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mRememberedLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 903
    return-void
.end method

.method private AcceptHighlightedCandidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->trySelect()V

    .line 1187
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->removeHighlight()V

    .line 1188
    return-void
.end method

.method private addMoreSuggestions()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 877
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getMoreWords()Ljava/util/List;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setMoreSuggestions(Ljava/util/List;)V

    .line 884
    :cond_1
    return-void
.end method

.method private flashError()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 950
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x121

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 952
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_0

    .line 954
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 956
    :cond_0
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateInlineString(Z)V

    .line 958
    :cond_1
    return-void
.end method

.method private handlePrediction(I[I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidIndex:I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentIndex:I

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 745
    :goto_0
    if-nez v2, :cond_1

    .line 746
    if-nez v0, :cond_1

    .line 747
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    .line 753
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 754
    return-void

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 704
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->processKey(III)Z

    move-result v0

    .line 705
    if-nez v0, :cond_6

    .line 706
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 707
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 712
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapTimeOut()V

    move v7, v2

    move v2, v0

    move v0, v7

    .line 711
    goto :goto_0

    .line 709
    :cond_4
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "quick_cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 710
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 717
    :cond_5
    iput p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidKey:I

    .line 718
    iget v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentIndex:I

    iput v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidIndex:I

    .line 719
    iget v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mTapCount:I

    iput v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidTapCount:I

    move v2, v0

    move v0, v1

    .line 720
    goto :goto_0

    .line 724
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapClearInvalid()V

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    .line 728
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "stroke"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 729
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v3

    invoke-virtual {v0, v3, p1, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->processKey(III)Z

    move-result v0

    move v7, v2

    move v2, v0

    move v0, v7

    goto/16 :goto_0

    .line 734
    :cond_8
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mAutoCorrectionMode:I

    if-eqz v0, :cond_b

    .line 735
    array-length v0, p2

    :goto_1
    move v4, v2

    move v3, v2

    .line 738
    :goto_2
    if-ge v4, v0, :cond_9

    aget v5, p2, v4

    if-lez v5, :cond_9

    .line 739
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v5

    aget v6, p2, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    invoke-virtual {v3, v5, v6, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->processKey(III)Z

    move-result v3

    .line 740
    if-eqz v3, :cond_a

    move v0, v2

    move v2, v3

    .line 741
    goto/16 :goto_0

    :cond_9
    move v0, v2

    move v2, v3

    .line 738
    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method private handleSeparator(I[I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 761
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    .line 764
    return-void

    .line 768
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->sendKeyChar(C)V

    .line 771
    invoke-direct {p0, v1, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 772
    return-void
.end method

.method private handleShortcut(I)Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1214
    :cond_0
    return v4

    .line 1216
    :cond_1
    add-int/lit8 v0, p1, -0x8

    .line 1217
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getFirstCandidateInCurrentPage()I

    move-result v1

    .line 1218
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLastCandidateInCurrentPage()I

    move-result v2

    .line 1219
    if-eq v1, v3, :cond_2

    if-ne v2, v3, :cond_3

    .line 1220
    :cond_2
    return v4

    .line 1222
    :cond_3
    const/4 v3, 0x7

    if-ne p1, v3, :cond_4

    .line 1223
    const/16 v0, 0x9

    .line 1225
    :cond_4
    if-ltz v0, :cond_5

    add-int v3, v0, v1

    if-le v3, v2, :cond_6

    .line 1226
    :cond_5
    return v4

    .line 1228
    :cond_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1229
    const/4 v0, 0x1

    return v0
.end method

.method private hasActiveKeySeq()Z
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideSpellView()V
    .locals 1

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 855
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->hideSpellLayout()V

    .line 856
    return-void
.end method

.method private inputModeName2IntegralValue(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    const/4 v1, -0x1

    .line 262
    const-string/jumbo v2, "pinyin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 277
    :goto_0
    return v0

    .line 265
    :cond_0
    const-string/jumbo v0, "bpmf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const-string/jumbo v0, "stroke"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    const/4 v0, 0x2

    goto :goto_0

    .line 271
    :cond_2
    const-string/jumbo v0, "cangjie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 272
    const/4 v0, 0x3

    goto :goto_0

    .line 274
    :cond_3
    const-string/jumbo v0, "quick_cangjie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 275
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isModeCangjie()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 906
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "cangjie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "quick_cangjie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 907
    goto :goto_0
.end method

.method private isModePinyin()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 911
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v2, "pinyin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private moveHighlightToWordListNearCandidate(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1152
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1153
    :cond_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->enableHighlight()V

    .line 1155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1156
    const/4 v0, 0x0

    .line 1157
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 1158
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v0

    .line 1161
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    .line 1162
    return-void

    .line 1159
    :cond_2
    const/16 v1, 0x15

    if-ne p1, v1, :cond_9

    .line 1160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1163
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1164
    return-void

    .line 1165
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1166
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/Int;->inc(I)I

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1172
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->requestLayout()V

    .line 1175
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    .line 1181
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 1182
    return-void

    .line 1167
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/Int;->dec(I)I

    goto :goto_1

    .line 1170
    :cond_7
    return-void

    .line 1178
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_2

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private moveHightlightToWordListNearPage(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1119
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/SpellListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1120
    :cond_0
    return-void

    .line 1122
    :cond_1
    const/16 v1, 0x13

    if-ne p1, v1, :cond_3

    .line 1123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1126
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->enableHighlight()V

    .line 1128
    if-nez v0, :cond_4

    .line 1129
    return-void

    .line 1124
    :cond_3
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 1125
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1130
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v0

    .line 1132
    if-ne v0, v2, :cond_5

    .line 1133
    return-void

    .line 1134
    :cond_5
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 1135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1136
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    .line 1150
    :goto_1
    return-void

    .line 1141
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v0

    .line 1142
    if-ne v0, v2, :cond_7

    .line 1143
    return-void

    .line 1144
    :cond_7
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 1145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1146
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1147
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1148
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_1
.end method

.method private postDelayHideSpellViewMsg()V
    .locals 4

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 859
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 861
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/high16 v5, -0x10000

    .line 964
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->InlineStringChinese:[I

    const v1, 0x7f0e0002

    .line 963
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 968
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 969
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 971
    packed-switch v3, :pswitch_data_0

    .line 968
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    goto :goto_1

    .line 978
    :pswitch_1
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 981
    :pswitch_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 985
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 986
    return-void

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeDelayHideSpellViewMsg()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    return-void
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 919
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->clearAllKeys()Z

    .line 920
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapClearInvalid()V

    .line 921
    return-void
.end method

.method private updateContext()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    return v2

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    :cond_1
    return v2

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 342
    if-nez v0, :cond_3

    .line 346
    return v2

    .line 349
    :cond_3
    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 350
    if-nez v0, :cond_4

    .line 354
    return v2

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 362
    return v0
.end method

.method private updateInlineString(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x121

    const/4 v4, 0x0

    .line 929
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 931
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidKey:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 933
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 938
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 940
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 941
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 942
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 944
    :cond_3
    return-void
.end method

.method private updateListViews(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 836
    if-eqz p1, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateSpellings()V

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateSuggestions()V

    .line 840
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateInlineString(Z)V

    .line 843
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 844
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/SpellListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 845
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->requestLayout()V

    .line 846
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->invalidate()V

    .line 851
    return-void
.end method

.method private updateMaxKeyTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 1009
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "quick_cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 997
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1004
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0
.end method

.method private updateSpellings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 778
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAmbigousInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getSpells(Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;

    move-result-object v0

    .line 780
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/nuance/flext9_OEM/input/SpellListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 782
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->clear()V

    .line 786
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->postDelayHideSpellViewMsg()V

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 795
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 796
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 801
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 802
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;

    move-result-object v0

    .line 803
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/flext9_OEM/input/Int;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 806
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 809
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 811
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->enableHighlight()V

    .line 817
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    if-nez v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->enableHighlight()V

    .line 824
    :cond_3
    :goto_1
    return-void

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->disableHighlight()V

    goto :goto_0

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_1
.end method


# virtual methods
.method public allowsMoreKey()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 665
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    if-eqz v0, :cond_3

    .line 666
    return v2

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "quick_cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 669
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 674
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 655
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/ChineseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    .line 108
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->create()Z

    .line 111
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 112
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setInputView(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 113
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-direct {v0, p0, p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;-><init>(Lcom/nuance/flext9_OEM/input/ChineseInputView;Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;

    .line 116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->readStyles(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->loadConfiguration(Landroid/content/Context;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v0, "XT9IME.InputView"

    const-string/jumbo v1, "can not create an instance of ChineseInput"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 148
    return-object v2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    .line 153
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->initViews(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->getPhraseWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->getSpellWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 158
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setGetMoreWordsHandler(Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;)V

    .line 159
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 160
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->setParent(Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 162
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->clearAllKeys()Z

    .line 135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->destroy()V

    .line 138
    :cond_0
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    .line 139
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 140
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 435
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v0, :cond_4

    .line 436
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 437
    if-nez p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v2, v1, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 439
    return-void

    .line 442
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 443
    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 444
    aget-object v0, p1, v2

    .line 445
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 450
    :cond_4
    return-void
.end method

.method public finishInput()V
    .locals 2

    .prologue
    .line 283
    const-string/jumbo v0, "XT9IME.InputView"

    const-string/jumbo v1, "ChineseInputView::finishInput"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 289
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->closing()V

    .line 291
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 292
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hideSpellView()V

    .line 293
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->clear()V

    .line 294
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1

    .line 300
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->finish()V

    .line 319
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 367
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->clearAllKeys()Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 378
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapTimeOut()V

    .line 379
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidKey:I

    .line 380
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentIndex:I

    .line 381
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidIndex:I

    .line 382
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidTapCount:I

    .line 384
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 387
    :cond_2
    return-void
.end method

.method public getInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

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
    .line 1240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v0

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    return v0
.end method

.method public getShiftedState()I
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1111
    return-object p0
.end method

.method public getmSpellPhraseViewContainer()Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    return-object v0
.end method

.method public handleAcceptKeyForWordList(I)Z
    .locals 1

    .prologue
    .line 1204
    sparse-switch p1, :sswitch_data_0

    .line 1210
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1208
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->AcceptHighlightedCandidate()V

    goto :goto_0

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleBackspace(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapClearInvalid()V

    .line 557
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 560
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    .line 563
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateMaxKeyTimeout()V

    .line 569
    return v2

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->clearKey()Z

    goto :goto_0

    .line 554
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleCharKey(I[I)V
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 503
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->sendKeyChar(C)V

    .line 542
    :goto_0
    return-void

    .line 506
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    .line 509
    return-void

    .line 512
    :cond_2
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 516
    :cond_3
    const/16 v0, 0x31

    if-ne p1, v0, :cond_6

    .line 517
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isModePinyin()Z

    move-result v0

    .line 516
    if-eqz v0, :cond_6

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    .line 516
    if-eqz v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 516
    if-eqz v0, :cond_6

    .line 520
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_5

    .line 521
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->popupMiniKeyboard()Z

    goto :goto_0

    .line 524
    :cond_5
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 527
    :cond_6
    if-gt v2, p1, :cond_7

    if-gt p1, v3, :cond_7

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_7

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0

    .line 532
    :cond_7
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 533
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleSeparator(I[I)V

    goto :goto_0

    .line 535
    :cond_9
    if-gt v2, p1, :cond_a

    if-gt p1, v3, :cond_a

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleSeparator(I[I)V

    goto :goto_0

    .line 539
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->finishInput()V

    .line 611
    return-void
.end method

.method public handleDirectionKeyForWordList(I)Z
    .locals 1

    .prologue
    .line 1190
    packed-switch p1, :pswitch_data_0

    .line 1200
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1193
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->moveHighlightToWordListNearCandidate(I)V

    goto :goto_0

    .line 1197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->moveHightlightToWordListNearPage(I)V

    goto :goto_0

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 456
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 455
    :cond_1
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 458
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_1
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleAltSymbolPage()V

    .line 606
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->selectDefault()V

    .line 600
    :goto_0
    return v1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->cycleTone()Z

    move-result v0

    .line 583
    if-eqz v0, :cond_1

    .line 584
    invoke-direct {p0, v1, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 598
    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0
.end method

.method public isSpecialLanguage()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1233
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/InputView;->onDetachedFromWindow()V

    .line 1234
    return-void
.end method

.method public onHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1037
    invoke-static {}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1094
    :goto_0
    :pswitch_0
    :sswitch_0
    return v2

    .line 1039
    :pswitch_1
    new-array v0, v3, [I

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v1

    aput v1, v0, v2

    .line 1040
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleCharKey(I[I)V

    .line 1041
    return v3

    .line 1044
    :pswitch_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v0

    .line 1045
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1083
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleShortcut(I)Z

    move-result v0

    return v0

    .line 1047
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleBackspace(I)Z

    move-result v0

    return v0

    .line 1056
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleAcceptKeyForWordList(I)Z

    move-result v0

    return v0

    .line 1059
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleShift()V

    .line 1060
    return v3

    .line 1062
    :sswitch_5
    invoke-virtual {p0, v2, v3}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleSpace(ZI)Z

    move-result v0

    return v0

    .line 1067
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleDirectionKeyForWordList(I)Z

    move-result v0

    return v0

    .line 1092
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->handleMultitapHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    move-result v0

    return v0

    .line 1037
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1045
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
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

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateMaxKeyTimeout()V

    .line 1014
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 478
    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 481
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isPunctuationOrSymbol(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 480
    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 480
    if-eqz v1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xffff

    invoke-virtual {v0, v2, v1, v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->processKey(III)Z

    move-result v0

    .line 484
    if-nez v0, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    .line 487
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 490
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 491
    invoke-interface {v0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 492
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 495
    :cond_4
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->flashError()V

    goto :goto_0
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 892
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 895
    :cond_0
    return-void
.end method

.method public resetShiftStat()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 618
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v1, v1, p1

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 622
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->clear()V

    .line 626
    return-void

    .line 629
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-ne p3, v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 635
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 636
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 637
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 639
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapClearInvalid()V

    .line 640
    invoke-direct {p0, v4, v4}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setActiveSpellIndex(I)Z

    .line 644
    invoke-direct {p0, v3, v4}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0
.end method

.method public setBackLayout()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public setInputMode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public setLayout(I)Z
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    const-string/jumbo v0, "XT9IME.InputView"

    const-string/jumbo v1, "ChineseInputView::startInputView"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->finishInput()V

    .line 184
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 187
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "auto_correction_mode"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mAutoCorrectionMode:I

    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 192
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 202
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 208
    :goto_0
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->start()Z

    .line 212
    const-string/jumbo v0, "XT9IME.InputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mChineseInput.setLanguage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setLanguage(I)Z

    .line 215
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setInputMode(I)Z

    .line 229
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setAttribute(II)Z

    .line 231
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mFuzzyPinyin:I

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setAttribute(II)Z

    .line 233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->enableHighlight()V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 248
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hideSpellView()V

    .line 250
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    .line 251
    invoke-direct {p0, v5, v4}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 252
    return-void

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    goto/16 :goto_0

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->disableHighlight()V

    goto :goto_1
.end method

.method public switchFromSymbolMode()V
    .locals 0

    .prologue
    .line 1114
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 399
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 402
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_4

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_1

    .line 406
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->clearAllKeys()Z

    .line 410
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 413
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->multitapTimeOut()V

    .line 414
    iput v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidKey:I

    .line 415
    iput v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mCurrentIndex:I

    .line 416
    iput v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidIndex:I

    .line 417
    iput v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInvalidTapCount:I

    move v0, v2

    .line 422
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->dismissPopupKeyboard()V

    .line 424
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateContext()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 428
    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-direct {p0, v2, v1}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->updateListViews(ZZ)V

    .line 431
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 402
    goto :goto_0
.end method
