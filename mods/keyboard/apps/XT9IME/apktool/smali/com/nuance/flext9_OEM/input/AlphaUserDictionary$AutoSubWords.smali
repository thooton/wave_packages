.class public Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;
.super Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;
.source "AlphaUserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSubWords"
.end annotation


# instance fields
.field private mCurrenSubs:Ljava/lang/StringBuilder;

.field private mCurrentWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method


# virtual methods
.method public add(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public find(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 3

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbFind(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFirst(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 192
    return v1

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    return v0
.end method

.method public getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v1, :cond_0

    .line 201
    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbGetNext(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;->setSubs(Ljava/lang/String;)V

    .line 210
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

.method public update(Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 162
    return v1

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaUserDictionary$AutoSubWords;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    .line 174
    :cond_2
    return v1
.end method
