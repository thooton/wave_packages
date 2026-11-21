.class Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;
.super Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;
.source "UserDictionaryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/UserDictionaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    .line 216
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;-><init>()V

    .line 217
    const-string/jumbo v0, "IUserDictionary"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->TAG:Ljava/lang/String;

    .line 1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionary;->add(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;Lcom/nuance/flext9_OEM/input/UserWord;)Lcom/nuance/flext9_OEM/input/UserWord;

    .line 226
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionary;->delete(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public find(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionary;->find(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/UserDictionary;->finish()V

    .line 349
    :cond_0
    return-void
.end method

.method public getCurrentUserWord()Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get1(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/UserWord;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionary;->getFirst(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNext(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionary;->getNext(Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 284
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasActiveSequence(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/UserDictionary;->hasActiveSequence()Z

    move-result v0

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPinyinMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 379
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 381
    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v0, v2, :cond_1

    .line 382
    :cond_0
    const-string/jumbo v0, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_1
    return v3
.end method

.method public isStrokeOrBPMFMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 365
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 367
    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v0, v2, :cond_2

    .line 368
    :cond_0
    const-string/jumbo v0, "stroke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string/jumbo v0, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 370
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_2
    return v3
.end method

.method public resetCurrentUserWord()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    new-instance v1, Lcom/nuance/flext9_OEM/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>()V

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;Lcom/nuance/flext9_OEM/input/UserWord;)Lcom/nuance/flext9_OEM/input/UserWord;

    .line 239
    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    .line 313
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_1

    .line 314
    const-string/jumbo v1, "ChineseSimpDictionary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set1(Lcom/nuance/flext9_OEM/input/UserDictionaryService;I)I

    .line 318
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 319
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get2(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/UserDictionary;->start(I)Z

    .line 337
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_2
    const-string/jumbo v1, "ChineseTradDictionary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-eq v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    sget v2, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set1(Lcom/nuance/flext9_OEM/input/UserDictionaryService;I)I

    .line 327
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 328
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get3(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get4(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserDictionary;

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {v0, p2, p3}, Lcom/nuance/flext9_OEM/input/UserDictionary;->update(Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0, p3}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;Lcom/nuance/flext9_OEM/input/UserWord;)Lcom/nuance/flext9_OEM/input/UserWord;

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$2;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0, p2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-set0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;Lcom/nuance/flext9_OEM/input/UserWord;)Lcom/nuance/flext9_OEM/input/UserWord;

    .line 301
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
