.class public Lcom/nuance/flext9_OEM/input/UserDictionaryService;
.super Landroid/app/Service;
.source "UserDictionaryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;,
        Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;
    }
.end annotation


# static fields
.field public static DEFAULT_ALPHA_LANGUAGE:I

.field public static DEFAULT_CHINESE_SIMP_LANGUAGE:I

.field public static DEFAULT_CHINESE_TRAD_LANGUAGE:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserWord:Lcom/nuance/flext9_OEM/input/UserWord;

.field private mDefaultSimplifyMode:Ljava/lang/String;

.field private mDefaultTraditionalMode:Ljava/lang/String;

.field private mDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/flext9_OEM/input/UserDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final mIUserDictionary:Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;

.field private final mIUserDictionaryConfig:Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;

.field private mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

.field private mLanguages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUserSelectedInputMode:Ljava/lang/String;

.field private mLastUserSelectedLanguageId:I


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/flext9_OEM/input/UserWord;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    return-object v0
.end method

.method static synthetic -get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLastUserSelectedInputMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLastUserSelectedLanguageId:I

    return v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;Lcom/nuance/flext9_OEM/input/UserWord;)Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/flext9_OEM/input/UserWord;

    return-object p1
.end method

.method static synthetic -set1(Lcom/nuance/flext9_OEM/input/UserDictionaryService;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLastUserSelectedLanguageId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->loadAvailableLanguages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "UserDictionaryService"

    sput-object v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x109

    sput v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    .line 26
    const/16 v0, 0xe0

    sput v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    .line 27
    const/16 v0, 0xe1

    sput v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const-string/jumbo v0, "pinyin"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "bpmf"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/nuance/flext9_OEM/input/UserWord;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/flext9_OEM/input/UserWord;

    .line 109
    new-instance v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;-><init>(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mIUserDictionaryConfig:Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;

    .line 216
    new-instance v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;-><init>(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mIUserDictionary:Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;

    .line 23
    return-void
.end method

.method private loadAvailableLanguages()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->syncWithCurrentUserConfiguration(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphaInputLanguageCyclingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 47
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getChineseInputModeCyclingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 51
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLastUserSelectedLanguageId:I

    .line 64
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mLastUserSelectedInputMode:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind(): action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-class v0, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mIUserDictionaryConfig:Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;

    return-object v0

    .line 100
    :cond_0
    const-class v0, Lcom/nuance/flext9_OEM/input/IUserDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mIUserDictionary:Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;

    return-object v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 73
    iput-object p0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->loadAvailableLanguages()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    .line 77
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string/jumbo v1, "AlphaUdbDictionary"

    new-instance v2, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;

    sget v3, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/InputMethods;->getDatabaseConfigFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string/jumbo v1, "AlphaAsdbDictionary"

    new-instance v2, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;

    sget v3, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/InputMethods;->getDatabaseConfigFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->isChineseInputBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string/jumbo v1, "ChineseSimpDictionary"

    new-instance v2, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;

    sget v3, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/InputMethods;->getDatabaseConfigFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string/jumbo v1, "ChineseTradDictionary"

    new-instance v2, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;

    sget v3, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/InputMethods;->getDatabaseConfigFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 90
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 91
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    .line 92
    return-void
.end method
