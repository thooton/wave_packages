.class public Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;
.super Lcom/nuance/flext9_OEM/input/HandWritingInputView;
.source "AlphaHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;,
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;,
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XT9IME"

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field static final MSG_RESUME_SPEECH:I = 0x1f8

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I


# instance fields
.field private final MSG_HANDLE_CHAR:I

.field private final MSG_HANDLE_INSTANT_GESTURE_CHAR:I

.field private final MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I

.field private final MSG_HANDLE_SUGGESTION_CANDIDATES:I

.field private final MSG_HANDLE_TEXT:I

.field private mCurrentCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field private mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

.field mPopupViewHandler:Landroid/os/Handler;

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

.field private mShownCandidateList:Z

.field private mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

.field private mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;CLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleInstantGestureChar(CLjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->showHowToUseToast()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 778
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->MSG_HANDLE_SUGGESTION_CANDIDATES:I

    .line 779
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->MSG_HANDLE_CHAR:I

    .line 780
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->MSG_HANDLE_TEXT:I

    .line 781
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->MSG_HANDLE_INSTANT_GESTURE_CHAR:I

    .line 782
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I

    .line 783
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;-><init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    .line 829
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;-><init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 960
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;-><init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 219
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setDigitsAndSymbolsCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 220
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 221
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    .line 280
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 230
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addPhoneNumberCategoryOnly()V

    .line 231
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 232
    iput v5, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 240
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addEmailCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 241
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 242
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 251
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addUrlCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 253
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 262
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 263
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 264
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto/16 :goto_0

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 272
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 273
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 274
    iput v4, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto/16 :goto_0
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 555
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 556
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 557
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->noteSelectedCandidate(I)V

    .line 559
    const/4 v0, 0x1

    return v0

    .line 562
    :cond_0
    return v2
.end method

.method private changeCandidateViewContainerLayout()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method private changeWriteRecognitionMode()V
    .locals 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mShownCandidateList:Z

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setRecognitionMode(I)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setRecognitionMode(I)V

    goto :goto_0
.end method

.method private changeWriteSettings(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    sget v1, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->NO_LINE_SUPPORTS:I

    iput v1, v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mSupportLineSet:I

    .line 617
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 618
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 626
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->changeSettings(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)Z

    .line 632
    return-void
.end method

.method private deleteOneCharacter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 455
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private deleteWordToLeftOfCursor()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->deleteWordToLeftOfCursor()V

    .line 540
    return-void
.end method

.method private deleteWordToRightOfCursor()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->deleteWordToRightOfCursor()V

    .line 536
    return-void
.end method

.method private downShiftCandidateList()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 528
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 532
    :cond_1
    return-void
.end method

.method private handleChar(C)V
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    .line 468
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 509
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 510
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 471
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0

    .line 475
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 479
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    goto :goto_0

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->deleteWordToLeftOfCursor()V

    goto :goto_0

    .line 488
    :sswitch_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_3

    .line 489
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    goto :goto_0

    .line 492
    :cond_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->deleteWordToRightOfCursor()V

    goto :goto_0

    .line 497
    :sswitch_4
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->downShiftCandidateList()V

    goto :goto_0

    .line 503
    :sswitch_5
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->upShiftCandidateList()V

    goto :goto_0

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x20 -> :sswitch_0
        0x21d0 -> :sswitch_2
        0x21d1 -> :sswitch_5
        0x21d2 -> :sswitch_3
        0x21d3 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleInstantGestureChar(CLjava/util/List;)V
    .locals 1
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
    .line 717
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 719
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 720
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleChar(C)V

    .line 724
    return-void
.end method

.method private handleSpace()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 426
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 430
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 431
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->addWordToUserDictionary(Ljava/lang/CharSequence;)V

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->sendSpace()V

    .line 443
    return-void

    .line 430
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 709
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcom/nuance/flext9_OEM/input/QuickToast;->hide()V

    .line 205
    return-void
.end method

.method private isEmptyCandidateList()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private noteSelectedCandidate(I)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->noteSelectedCandidate(I)V

    .line 569
    :cond_0
    return-void
.end method

.method private performDelayRecognition()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 728
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->clearAll()V

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->invalidate()V

    .line 738
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 742
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->performDelayRecognition()V

    .line 549
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 751
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 415
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 417
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 420
    :cond_0
    return-object v0
.end method

.method private resumeSpeech()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->resumeSpeech(II)V

    .line 955
    :cond_0
    return-void
.end method

.method private showHowToUseToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "show_how_to_use_hwr"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string/jumbo v1, "show_how_to_use_hwr"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v4, v2}, Lcom/nuance/flext9_OEM/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 201
    :cond_0
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .locals 5

    .prologue
    const v4, 0x7f090135

    const v3, 0x7f090133

    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_2

    .line 888
    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    .line 889
    if-eqz v1, :cond_2

    .line 892
    if-nez p1, :cond_3

    .line 893
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 894
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 901
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 902
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->setWritingMode(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->invalidate()V

    .line 907
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 921
    :cond_2
    return-void

    .line 896
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 897
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 898
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private upShiftCandidateList()V
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 518
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 522
    :cond_1
    return-void
.end method

.method private updateCandidatesList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 682
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 683
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 684
    return-void

    .line 687
    :cond_0
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 689
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 691
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 692
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 693
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 697
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected acceptCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->acceptCurrentInline()V

    .line 581
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v2, v1, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 582
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 584
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->noteSelectedCandidate(I)V

    .line 586
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_0
    return v1
.end method

.method protected changeKeyboardMode()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 853
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v2, :cond_2

    .line 854
    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 855
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setDigitsAndSymbolsCategoryOnly(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 870
    :goto_0
    if-eqz v0, :cond_1

    .line 871
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->changeSettings(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)Z

    .line 877
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    .line 882
    return-void

    .line 858
    :cond_2
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-ne v2, v0, :cond_5

    .line 859
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 860
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 862
    :cond_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    goto :goto_0

    .line 865
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setCategories(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 407
    return-void
.end method

.method public create(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 67
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    .line 69
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->create()Z

    .line 72
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    .line 73
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setInputView(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 81
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->destroy()V

    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->destroy()V

    .line 92
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    .line 93
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 98
    return-void
.end method

.method public destroyInstance()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->destroyInstance()V

    .line 56
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mShownCandidateList:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 110
    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 111
    aget-object v0, p1, v2

    .line 112
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0, v3, v1, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 118
    :cond_4
    return-void
.end method

.method findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
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
    .line 924
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 925
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_0

    .line 926
    return-object v0

    .line 930
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->finishInput()V

    .line 289
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 291
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 293
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 294
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 295
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 296
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->removeRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 297
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->finish()V

    .line 298
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 299
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 304
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 574
    return-void
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    return-object v1
.end method

.method protected handleBackspace(I)Z
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueChar(C)V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(I[I)V
    .locals 2

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueChar(C)V

    .line 375
    return-void
.end method

.method public handleClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->handleClose()V

    .line 313
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 315
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 317
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 318
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 320
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 326
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->handleKey(IZI)Z

    move-result v0

    return v0

    .line 334
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 338
    :cond_0
    if-nez p2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/flext9_OEM/input/HandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HandWritingContainerView;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->startSpeech(II)V

    .line 341
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSpace(ZI)Z
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 380
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 383
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueChar(C)V

    .line 394
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueChar(C)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 2

    .prologue
    .line 935
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->onApplicationUnbind()V

    .line 941
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 943
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 944
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5

    .line 758
    iget v0, p1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 776
    :goto_0
    return-void

    .line 761
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 765
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 769
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 773
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 642
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 648
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    if-eq v0, p1, :cond_1

    .line 649
    :cond_0
    check-cast p1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeWriteSettings(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->startArcsAddingSequence()V

    .line 660
    :cond_4
    return-void
.end method

.method public penUp([Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 667
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->startFading()V

    .line 673
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    new-instance v3, Ljava/util/ArrayList;

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v4, p1

    if-le v4, v5, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->mRecognizeDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 675
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 597
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/flext9_OEM/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v2, v1, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 599
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 601
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->noteSelectedCandidate(I)V

    .line 603
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/flext9_OEM/input/HandWritingView;)V
    .locals 0

    .prologue
    .line 636
    check-cast p1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 637
    return-void
.end method

.method showStartOfWordCandidateList()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/nuance/flext9_OEM/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 151
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x1f8

    const/4 v1, 0x0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCompletionOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mShownCandidateList:Z

    .line 165
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->addRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 166
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 167
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 168
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->SetKeyboardForTextEntry(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 169
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setWidth(I)V

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->setHeight(I)V

    .line 174
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->changeWriteRecognitionMode()V

    .line 175
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/flext9_OEM/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->start(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;Landroid/content/Context;I)Z

    .line 177
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->postDelayShowingStartOfWordCandidate()V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 185
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->postHowToUseToastMsg()V

    .line 187
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->setSpeechViewHost()V

    .line 193
    return-void

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 1

    .prologue
    .line 124
    invoke-super/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->updateSelection(IIIIII)V

    .line 127
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 137
    :cond_1
    if-ge p3, p4, :cond_2

    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/flext9_OEM/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/flext9_OEM/input/Composition;->setSelection(II)V

    .line 142
    :cond_2
    return-void
.end method
