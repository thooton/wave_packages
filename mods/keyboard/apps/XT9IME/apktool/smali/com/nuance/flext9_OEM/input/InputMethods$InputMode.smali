.class public Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMode"
.end annotation


# static fields
.field private static AUTO_CORRECTION:Ljava/lang/String;

.field private static END_OF_SPEECH_DETECTION:Ljava/lang/String;

.field private static KEYBOARD_LAYOUT:Ljava/lang/String;

.field private static MIX_LETTER_AND_DIGIT:Ljava/lang/String;

.field private static MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

.field private static MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

.field private static NEXT_WORD_PREDICTION:Ljava/lang/String;

.field private static RECAPTURE:Ljava/lang/String;

.field private static SPEECH:Ljava/lang/String;

.field private static TRACE:Ljava/lang/String;

.field private static TRACE_AUTO_ACCEPT:Ljava/lang/String;

.field private static WORD_COMPLETION:Ljava/lang/String;


# instance fields
.field protected mDefaultEnabled:Z

.field public mDefaultLayoutId:I

.field public mDisplayInputMode:Ljava/lang/String;

.field protected mEnabledPrefKey:Ljava/lang/String;

.field private mEnabledTrace:Z

.field public mInputMode:Ljava/lang/String;

.field public mLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation
.end field

.field public mMixLetterAndDigit:Z

.field public mMixLetterAndPunctuation:Z

.field public mMixLetterAndSymbol:Z

.field public mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

.field private mSpeechEnabled:Z

.field private mTraceAutoAccept:Z


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$Layout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->addLayout(Lcom/nuance/flext9_OEM/input/InputMethods$Layout;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 946
    const-string/jumbo v0, "mix_letter_and_symbol"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

    .line 947
    const-string/jumbo v0, "mix_letter_punctuation"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

    .line 948
    const-string/jumbo v0, "mix_letter_digit"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_DIGIT:Ljava/lang/String;

    .line 949
    const-string/jumbo v0, "recapture"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->RECAPTURE:Ljava/lang/String;

    .line 950
    const-string/jumbo v0, "next_word_prediction"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->NEXT_WORD_PREDICTION:Ljava/lang/String;

    .line 951
    const-string/jumbo v0, "auto_correction"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->AUTO_CORRECTION:Ljava/lang/String;

    .line 952
    const-string/jumbo v0, "word_completion"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->WORD_COMPLETION:Ljava/lang/String;

    .line 953
    const-string/jumbo v0, "trace"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->TRACE:Ljava/lang/String;

    .line 954
    const-string/jumbo v0, "trace_auto_accept"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->TRACE_AUTO_ACCEPT:Ljava/lang/String;

    .line 955
    const-string/jumbo v0, "nmsp_speech"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->SPEECH:Ljava/lang/String;

    .line 956
    const-string/jumbo v0, "nmsp_end_of_speech_detection"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->END_OF_SPEECH_DETECTION:Ljava/lang/String;

    .line 957
    const-string/jumbo v0, "keyboard_layout"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->KEYBOARD_LAYOUT:Ljava/lang/String;

    .line 945
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 977
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 980
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 981
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 982
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 983
    const/16 v1, 0x900

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 984
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 985
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 987
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 991
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isSpeechFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mSpeechEnabled:Z

    .line 996
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->-get0(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Z

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 997
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->-wrap0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    .line 1001
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1002
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1003
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1005
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1007
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get2(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1009
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultEnabled:Z

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 1010
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1013
    :cond_2
    return-void
.end method

.method private addLayout(Lcom/nuance/flext9_OEM/input/InputMethods$Layout;)V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicated layout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    const-string/jumbo v2, "for input mode("

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    const-string/jumbo v2, ") - IGNORED"

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private composeKeyForKeyboardLayout(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->KEYBOARD_LAYOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->-wrap0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyboardLayoutId(Landroid/content/SharedPreferences;II)I
    .locals 2

    .prologue
    .line 1077
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->composeKeyForKeyboardLayout(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getModeNameAsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isABCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const-string/jumbo v0, "ambig"

    return-object v0

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method private getScreenOrientation()I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get3(Lcom/nuance/flext9_OEM/input/InputMethods;)I

    move-result v0

    return v0
.end method

.method private saveKeyboardLayout(Landroid/content/SharedPreferences;II)V
    .locals 3

    .prologue
    .line 1082
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->composeKeyForKeyboardLayout(I)Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1085
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1086
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1087
    return-void
.end method


# virtual methods
.method public enableMixLetterAndDigit(Z)V
    .locals 3

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1321
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1322
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1323
    return-void
.end method

.method public enableMixLetterAndPunctuation(Z)V
    .locals 3

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1305
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1306
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1307
    return-void
.end method

.method public enableMixLetterAndSymbol(Z)V
    .locals 3

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1289
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1290
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1291
    return-void
.end method

.method public enableNextWordPrediction(Z)V
    .locals 2

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1145
    return-void
.end method

.method public enableRecapture(Z)V
    .locals 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1132
    return-void
.end method

.method public enableTrace(Z)V
    .locals 3

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1195
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1196
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1197
    return-void
.end method

.method public enableTraceAutoAccept(Z)V
    .locals 3

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1231
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1232
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1233
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1269
    instance-of v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    if-eqz v1, :cond_1

    .line 1270
    check-cast p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 1271
    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0

    .line 1274
    :cond_1
    return v0
.end method

.method public findLayout(I)Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 1237
    iget v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    if-ne v2, p1, :cond_0

    .line 1238
    return-object v0

    .line 1242
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoCorrectionMode()I
    .locals 3

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAutoCorrectionPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->AUTO_CORRECTION:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get0(Lcom/nuance/flext9_OEM/input/InputMethods;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
    .locals 4

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1054
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getScreenOrientation()I

    move-result v1

    iget v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getKeyboardLayoutId(Landroid/content/SharedPreferences;II)I

    move-result v0

    .line 1055
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    .line 1057
    if-nez v0, :cond_0

    .line 1058
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    .line 1061
    :cond_0
    if-nez v0, :cond_1

    .line 1063
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error - can\'t find the current or default layout for languageId(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    const-string/jumbo v3, ")"

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    const-string/jumbo v3, " with input mode("

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    const-string/jumbo v3, ")"

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_1
    return-object v0
.end method

.method public getDefaultKeyboardLayoutIdInPortrait()I
    .locals 3

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultLayoutId:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getKeyboardLayoutId(Landroid/content/SharedPreferences;II)I

    move-result v0

    .line 1073
    return v0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEndofSpeechDetectiionPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->END_OF_SPEECH_DETECTION:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayoutInPortaitPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->composeKeyForKeyboardLayout(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    return-object v0
.end method

.method public getKeyboardLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1248
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 1249
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_1

    .line 1250
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x900

    if-ne v3, v4, :cond_2

    .line 1252
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1251
    :cond_2
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0xa00

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 1256
    :cond_3
    return-object v1
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_SYMBOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_DIGIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextWordPredictionPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->NEXT_WORD_PREDICTION:Ljava/lang/String;

    return-object v0
.end method

.method public getRecapturePrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1123
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->RECAPTURE:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->SPEECH:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->TRACE_AUTO_ACCEPT:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1184
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->TRACE:Ljava/lang/String;

    return-object v0
.end method

.method public getWordCompletionPoint()I
    .locals 3

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWordCompletionPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->WORD_COMPLETION:Ljava/lang/String;

    return-object v0
.end method

.method public isABCMode()Z
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    .line 1118
    :goto_0
    return v0

    .line 1112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndofSpeechDetectionEnabled()Z
    .locals 3

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getEndofSpeechDetectiionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHandwriting()Z
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "handwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMixLetterAndDigitEnabled()Z
    .locals 3

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1315
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    .line 1316
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndDigit:Z

    return v0
.end method

.method public isMixLetterAndPunctuationEnabled()Z
    .locals 3

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1300
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    return v0
.end method

.method public isMixLetterAndSymbolEnabled()Z
    .locals 3

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1283
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1284
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    return v0
.end method

.method public isNextWordPredictionEnabled()Z
    .locals 3

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRecaptureEnabled()Z
    .locals 3

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSpeechEnabled()Z
    .locals 3

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1205
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getSpeechEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mSpeechEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mSpeechEnabled:Z

    .line 1206
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mSpeechEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isSpeechFeatureEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceAutoAcceptEnabled()Z
    .locals 3

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1225
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1226
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 3

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1189
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1190
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledTrace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 3

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->saveAsCurrent()V

    .line 1096
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 1097
    return-void
.end method

.method public setAutoCorrectionMode(I)V
    .locals 3

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1106
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->setEnabled(Z)V

    .line 1108
    return-void
.end method

.method public setWordCompletionPoint(I)V
    .locals 3

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return-void
.end method
