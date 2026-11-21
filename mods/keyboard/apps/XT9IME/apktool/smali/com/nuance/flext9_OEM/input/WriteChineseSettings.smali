.class public Lcom/nuance/flext9_OEM/input/WriteChineseSettings;
.super Ljava/lang/Object;
.source "WriteChineseSettings.java"


# static fields
.field public static MAX_RESULT_CHARACTERS:I


# instance fields
.field public mBaseline:I

.field public mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteChineseCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight:I

.field public mHelpline:I

.field public mInputGuide:I

.field public mRecognitionMode:I

.field public mRecognizeDelay:I

.field public mSupportLineSet:I

.field public mTopline:I

.field public mWidth:I

.field public mWritingDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0xa

    sput v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    .line 24
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mRecognizeDelay:I

    .line 27
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addChineseCategory(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public addAlphaCategory()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_ALPHA:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 58
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GESTURES:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 59
    return-void
.end method

.method public addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public final addChineseCategory(I)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GB2312_A:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 34
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GB2312_B:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 40
    :goto_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GESTURES:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 41
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_BIGFIVE_LEVEL_1:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 38
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_BIGFIVE_LEVEL_2:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    goto :goto_0
.end method

.method public addMixSymbols()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_PUNCTUATION:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 45
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_DIGIT:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 46
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GESTURES:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 47
    sget-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_SYMBOL:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->addCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V

    .line 48
    return-void
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public removeCategory(Lcom/nuance/flext9_OEM/input/WriteChineseCategory;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void
.end method
