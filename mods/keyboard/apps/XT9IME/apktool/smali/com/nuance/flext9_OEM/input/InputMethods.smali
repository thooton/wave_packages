.class public Lcom/nuance/flext9_OEM/input/InputMethods;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$FullScreenHandwritingState;,
        Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;,
        Lcom/nuance/flext9_OEM/input/InputMethods$Language;,
        Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static TAG_INPUT_LANGUAGE:Ljava/lang/String;

.field private static TAG_INPUT_LAYOUT:Ljava/lang/String;

.field private static TAG_INPUT_METHOD:Ljava/lang/String;

.field private static TAG_INPUT_MODE:Ljava/lang/String;


# instance fields
.field private mAlphaInputLanguageCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseInputModeCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

.field private mDefaultLanguageId:I

.field private mInputLanguages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaledChanged:Z

.field private mOrientation:I

.field private final mSpeechBuildEnabled:Z

.field private final mT9TraceBuildEnabled:Z

.field private final mT9WriteAlphaBuildEnabled:Z

.field private final mT9WriteBuildChineseEnabled:Z

.field private final mXT9ChineseInputBuildEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/InputMethods;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/InputMethods;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    return v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/InputMethods;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mLocaledChanged:Z

    return v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/InputMethods;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mOrientation:I

    return v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/InputMethods;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mSpeechBuildEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/InputMethods;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9TraceBuildEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "XT9IME"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "InputMethods"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_METHOD:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "Language"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "InputMode"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "Layout"

    sput-object v0, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/BuildInfo;->getBuldInfo(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/BuildInfo;->getBuildDate()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDatabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDatabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/nuance/flext9_OEM/input/Input;->normalizeXT9LanguageID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 57
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Input;->normalizeXT9LanguageID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->isWriteAlphaBuildEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    .line 62
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->isWriteChineseBuildEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    .line 63
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->isTraceBuildEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9TraceBuildEnabled:Z

    .line 64
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->isChineseInputBuildEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    .line 67
    iput-boolean v10, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mSpeechBuildEnabled:Z

    .line 72
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v0, v1

    move-object v2, v1

    .line 79
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 80
    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 81
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 83
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_METHOD:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 85
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    .line 86
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v1, "ModeCyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :cond_2
    const-string/jumbo v0, "savedLocale"

    .line 135
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "savedLocale"

    const-string/jumbo v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->isCurrentLocaleInputLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mLocaledChanged:Z

    .line 148
    :cond_3
    const-string/jumbo v1, "savedLocale"

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mLocaledChanged:Z

    if-eqz v0, :cond_4

    .line 152
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->setDefaultLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_e

    .line 154
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 156
    invoke-virtual {v0, v10}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 166
    :cond_4
    :goto_2
    return-void

    .line 88
    :cond_5
    :try_start_1
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 89
    new-instance v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-direct {v2, v3, p0, v6}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_1

    .line 91
    :cond_6
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 92
    invoke-direct {p0, v3, v2, v6}, Lcom/nuance/flext9_OEM/input/InputMethods;->createInputMode(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    goto/16 :goto_1

    .line 94
    :cond_7
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    invoke-direct {v0, v3, v1, v6}, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_1

    .line 98
    :cond_8
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 101
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 105
    iget v7, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 106
    iget v7, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/flext9_OEM/input/Input;->normalizeXT9LanguageID(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 105
    if-eqz v7, :cond_1

    .line 107
    :cond_9
    iget v7, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 108
    iget v7, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    iget-boolean v7, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    .line 107
    if-eqz v7, :cond_1

    .line 111
    :cond_a
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->addLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 115
    :cond_b
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 117
    if-eqz v1, :cond_1

    .line 118
    iget-object v7, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v8, "handwriting"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 119
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->isWriteBuildEnabled(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Z

    move-result v7

    .line 117
    if-eqz v7, :cond_1

    .line 120
    :cond_c
    invoke-static {v2, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->-wrap1(Lcom/nuance/flext9_OEM/input/InputMethods$Language;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    goto/16 :goto_1

    .line 123
    :cond_d
    sget-object v8, Lcom/nuance/flext9_OEM/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->-wrap0(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$Layout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 159
    :cond_e
    const-string/jumbo v0, "InputMethods"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not find default language Id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " locale = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private addLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate language (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") - IGNORED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static composeIntKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1663
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createInputMode(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 172
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    if-nez v0, :cond_0

    iget-object v1, p2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 179
    :cond_0
    if-eqz v0, :cond_5

    .line 180
    iget v1, p2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const-string/jumbo v1, "handwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    return-object v0

    .line 185
    :cond_1
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    return-object v0

    .line 189
    :cond_2
    const-string/jumbo v1, "handwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    return-object v0

    .line 192
    :cond_3
    const-string/jumbo v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaAmbigInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    return-object v0

    .line 196
    :cond_4
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    return-object v0

    .line 201
    :cond_5
    return-object v2
.end method

.method private enableNextDefaultInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 395
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->isInputModeEnabled(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 404
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 407
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v3

    .line 408
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 409
    if-eq v0, v1, :cond_7

    .line 410
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 411
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 418
    :goto_1
    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 449
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 454
    return-void

    .line 410
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v3

    .line 425
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 427
    if-eq v0, v1, :cond_6

    .line 428
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 429
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getEnabledInputModes(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 430
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 436
    :goto_4
    if-nez v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 440
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    goto :goto_2

    .line 428
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_4

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    move-object v0, p1

    goto :goto_2
.end method

.method private getEnabledInputModes(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->-wrap0(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1630
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedLanguage(Landroid/content/SharedPreferences;I)I
    .locals 2

    .prologue
    .line 1638
    :try_start_0
    const-string/jumbo v0, "current_language"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1651
    :goto_0
    return p1

    .line 1640
    :catch_0
    move-exception v0

    .line 1643
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1644
    const-string/jumbo v1, "current_language"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1647
    invoke-static {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method private isCurrentLocaleInputLanguage(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 1668
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    const/4 v0, 0x1

    return v0

    .line 1671
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInputModeEnabled(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Z
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    return v0

    .line 381
    :cond_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isWriteBuildEnabled(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    return v0

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    return v0
.end method

.method public static saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1624
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1625
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1627
    return-void
.end method

.method public static saveLanguage(Landroid/content/SharedPreferences;I)V
    .locals 2

    .prologue
    .line 1656
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1657
    const-string/jumbo v1, "current_language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1659
    return-void
.end method

.method private setDefaultLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->saveAsCurrent()V

    .line 613
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->setEnabled(Z)V

    .line 616
    :cond_0
    return-object v0
.end method

.method private syncCurrentAlphaInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 1

    .prologue
    .line 460
    instance-of v0, p1, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;

    if-eqz v0, :cond_0

    .line 465
    check-cast p1, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$AlphaInputMode;->syncCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 467
    :cond_0
    return-void
.end method


# virtual methods
.method public countEnabledLanguageMode()I
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 622
    iget v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    if-ne v2, p1, :cond_0

    .line 623
    return-object v0

    .line 627
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphaInputLanguageCyclingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    return-object v0
.end method

.method public getAlphabeticInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 233
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_1
    return-object v1
.end method

.method public getAvailablelanguages()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 283
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 285
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 287
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/Integer;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 294
    :cond_2
    return-object v3
.end method

.method public getChineseInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 245
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_1
    return-object v1
.end method

.method public getChineseInputModeCyclingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 5

    .prologue
    .line 594
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    .line 596
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 598
    if-nez v0, :cond_0

    .line 599
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->setDefaultLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 602
    :cond_0
    if-nez v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not find the current Language with languageId = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    return-object v0
.end method

.method public getDatabaseConfigFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDatabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAlphabeticInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 3

    .prologue
    .line 632
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 640
    iget v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    return-object v0

    .line 645
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputLanguageCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getNextInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 524
    iget v3, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 526
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 527
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 532
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 533
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 537
    :cond_1
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 544
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    return-object v0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 550
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 552
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->saveAsCurrent()V

    .line 553
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 554
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->syncCurrentAlphaInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    .line 560
    return-object v0

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 566
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 572
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    return-object v0

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 577
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->saveAsCurrent()V

    .line 578
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 580
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->syncCurrentAlphaInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    .line 586
    return-object v0
.end method

.method public isChineseSimpliedOnDevice()Z
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncWithCurrentUserConfiguration(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mOrientation:I

    .line 320
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isUDBChineseSimplifyField()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isUDBChineseTraditionalField()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 327
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getEnabledInputModes(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 336
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getEnabledInputModes(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 344
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mDefaultLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 345
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 347
    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 349
    iget v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_6

    .line 361
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 362
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->enableNextDefaultInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    .line 371
    :cond_6
    return-void

    .line 353
    :cond_7
    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
