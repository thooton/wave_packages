.class public Lcom/nuance/flext9_OEM/input/InputMethods$Language;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation


# static fields
.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field public static final CHINESE_SIMP_LANGUAGEID:I = 0xe1

.field public static final CHINESE_SINGAPORE_LANGUAGEID:I = 0xe3

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0

.field public static final ENGLISH_LANGUAGEID:I = 0x109

.field public static final JAPANESE_LANGUAGEID:I = 0x11

.field public static final KOREAN_LANGUAGEID:I = 0x12


# instance fields
.field private mDefaultEnabled:Z

.field public mDefaultInputMode:Ljava/lang/String;

.field public mDisplayLanguageName:Ljava/lang/String;

.field private final mEnabledPrefKey:Ljava/lang/String;

.field private final mEnabledTrace:Z

.field private final mInputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguageId:I

.field public mParent:Lcom/nuance/flext9_OEM/input/InputMethods;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledTrace:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getEnabledInputModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/InputMethods$Language;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->addInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 704
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 705
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 706
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 707
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 708
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    .line 709
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 712
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledTrace:Z

    .line 714
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->-wrap0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get2(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 723
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get1(Lcom/nuance/flext9_OEM/input/InputMethods;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get1(Lcom/nuance/flext9_OEM/input/InputMethods;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 725
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get1(Lcom/nuance/flext9_OEM/input/InputMethods;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 728
    :cond_0
    return-void
.end method

.method private addInputMode(Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get0(Lcom/nuance/flext9_OEM/input/InputMethods;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getEnabledInputModes()Ljava/util/List;
    .locals 4
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
    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 802
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 806
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 807
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    .line 815
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 816
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 817
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 822
    :cond_3
    return-object v1
.end method

.method public static isAlphabetic(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 662
    const/16 v1, 0xe0

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe2

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCKJ(I)Z
    .locals 1

    .prologue
    .line 689
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isJapaneseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isChineseLanguageId(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 674
    const/16 v1, 0xe1

    if-eq p0, v1, :cond_0

    .line 675
    const/16 v1, 0xe0

    if-ne p0, v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 676
    :cond_1
    const/16 v1, 0xe2

    if-eq p0, v1, :cond_0

    .line 677
    const/16 v1, 0xe3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseSimplified(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 666
    const/16 v1, 0xe1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseTraditional(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    const/16 v1, 0xe0

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapaneseLanguageId(I)Z
    .locals 1

    .prologue
    .line 681
    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanLanguageId(I)Z
    .locals 1

    .prologue
    .line 685
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 898
    instance-of v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v1, :cond_1

    .line 899
    check-cast p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 902
    :cond_1
    return v0
.end method

.method public findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 884
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    return-object v0

    .line 889
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllInputModes()Ljava/util/List;
    .locals 3
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
    .line 757
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 758
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 759
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 762
    :cond_0
    return-object v1
.end method

.method public getAmbigousInputModes()Ljava/util/List;
    .locals 5
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
    .line 744
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 745
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 746
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "abc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 747
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 746
    if-eqz v3, :cond_0

    .line 748
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 752
    :cond_1
    return-object v1
.end method

.method public getChineseInputModes()Ljava/util/List;
    .locals 5
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
    .line 768
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 769
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 770
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "bpmf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 771
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 770
    if-nez v3, :cond_1

    .line 772
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 770
    if-nez v3, :cond_1

    .line 773
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 770
    if-nez v3, :cond_1

    .line 774
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "quick_cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 770
    if-nez v3, :cond_1

    .line 775
    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "stroke"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 770
    if-eqz v3, :cond_0

    .line 776
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    :cond_2
    return-object v1
.end method

.method public getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 3

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 829
    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/IME;

    if-eqz v1, :cond_0

    .line 830
    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    .line 831
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isFocusOnHardKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const-string/jumbo v0, "ambig"

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    return-object v0

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 836
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 837
    return-object v0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 4

    .prologue
    .line 784
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 785
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    return-object v0

    .line 791
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHandWritingEnabled()Z
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechFeatureEnabled()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get4(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceFeatureSupport()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->-get5(Lcom/nuance/flext9_OEM/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 2

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 842
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 843
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 848
    return-void
.end method

.method public setInputMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 910
    :cond_0
    return-void
.end method

.method public toggleHandwritingAndInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 917
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 918
    const-string/jumbo v2, "last_key_input_mode"

    .line 920
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 921
    const-string/jumbo v2, "last_key_input_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    if-eqz v1, :cond_2

    .line 923
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 937
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 941
    :cond_1
    return-object v0

    .line 926
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v1

    .line 927
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 928
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    const-string/jumbo v2, "last_key_input_mode"

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    goto :goto_0
.end method
