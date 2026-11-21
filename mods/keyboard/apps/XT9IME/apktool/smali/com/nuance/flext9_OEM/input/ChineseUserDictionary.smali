.class Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;
.super Ljava/lang/Object;
.source "ChineseUserDictionary.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/UserDictionary;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlphaUserDictionary"


# instance fields
.field private mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

.field private mCurrentLanguageId:I

.field private mCurrentWordIndex:I

.field private mDefaultLanguageId:I

.field protected mEmpty:Ljava/lang/String;

.field private mInitialized:Z

.field protected mPhrase:Ljava/lang/StringBuilder;

.field protected mSpell:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    .line 21
    iput p1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mDefaultLanguageId:I

    .line 22
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/ChineseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    .line 23
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->create()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    .line 30
    const-string/jumbo v0, "AlphaUserDictionary"

    const-string/jumbo v1, "ChineseUserDictionary() failed to start Chinese Input Session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_2
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    .line 35
    const-string/jumbo v0, "AlphaUserDictionary"

    const-string/jumbo v1, "ChineseUserDictionary() failed to create Chinese Input Session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getSpell()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->udbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public find(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 76
    :cond_0
    return v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentLanguageId:I

    .line 123
    return-void
.end method

.method public getFirst(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 81
    return v1

    .line 84
    :cond_0
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentWordIndex:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    return v0
.end method

.method public getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 90
    return v4

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/UserWord;->setPhrase(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/UserWord;->setSpell(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentWordIndex:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->udbGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/UserWord;->setPhrase(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/UserWord;->setSpell(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentWordIndex:I

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_1
    return v4
.end method

.method public hasActiveSequence()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_1
    return v1
.end method

.method public start(I)Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mDefaultLanguageId:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentLanguageId:I

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setLanguage(I)Z

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    return v0

    .line 46
    :cond_1
    iput p1, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mCurrentLanguageId:I

    goto :goto_0
.end method

.method public update(Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 106
    return v1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseUserDictionary;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    .line 118
    :cond_2
    return v1
.end method
