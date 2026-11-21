.class public Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;
.super Ljava/lang/Object;
.source "AlphaUserDictionary.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/UserDictionary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlphaUserDictionary"


# instance fields
.field protected mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

.field protected mCurrentLanguageId:I

.field private mCurrentWord:Ljava/lang/StringBuilder;

.field protected mDefaultLanguageId:I

.field protected mEmpty:Ljava/lang/String;

.field protected mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mEmpty:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    .line 23
    iput p2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mDefaultLanguageId:I

    .line 24
    invoke-static {p3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/AlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->start(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    .line 32
    const-string/jumbo v0, "AlphaUserDictionary"

    const-string/jumbo v1, "Failed to start AlphaInput Session"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v0, "AlphaUserDictionary"

    const-string/jumbo v1, "Failed to created AlphaInput Session"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbAdd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public find(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbFind(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentLanguageId:I

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->finish()V

    .line 127
    return-void
.end method

.method public getFirst(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 97
    return v1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    return v0
.end method

.method public getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v1, :cond_0

    .line 105
    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbGetNext(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hasActiveSequence()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public start(I)Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isCKJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mDefaultLanguageId:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentLanguageId:I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->setLanguage(I)Z

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    return v0

    .line 49
    :cond_1
    iput p1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mCurrentLanguageId:I

    goto :goto_0
.end method

.method public update(Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    .line 89
    :cond_2
    return v1
.end method
