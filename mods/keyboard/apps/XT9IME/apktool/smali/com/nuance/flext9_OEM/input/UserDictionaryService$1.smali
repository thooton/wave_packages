.class Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;
.super Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;
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
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    .line 109
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;-><init>()V

    .line 1
    return-void
.end method

.method private isChineseSimplifyAvailable()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    .line 201
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isChineseTraditionalAvailable()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    .line 184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCurrentUserSelectedLanguageId()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public isAlphabeticLanguageEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    .line 153
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphaInputLanguageCyclingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    return v1
.end method

.method public isChineseSimplifyEnabled()Z
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->isChineseSimplifyAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->getCurrentUserSelectedLanguageId()I

    move-result v0

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isChineseTraditionalEnabled()Z
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->isChineseTraditionalAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v0, v1, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLanguageChange()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->getCurrentUserSelectedLanguageId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 169
    return v2

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v0

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get8(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)I

    move-result v0

    sget v1, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-ne v0, v1, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get7(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    return v2

    .line 177
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public query(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-wrap0(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)V

    .line 118
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getChineseInputModeCyclingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphaInputLanguageCyclingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v2

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string/jumbo v2, "ChineseSimpDictionary"

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get6(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "ChineseTradDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    if-lez v1, :cond_2

    .line 130
    const-string/jumbo v0, "AlphaUdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const-string/jumbo v0, "AlphaAsdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    :goto_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 135
    :cond_3
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const-string/jumbo v0, "ChineseSimpDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/UserDictionaryService$1;->this$0:Lcom/nuance/flext9_OEM/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/UserDictionaryService;->-get5(Lcom/nuance/flext9_OEM/input/UserDictionaryService;)Lcom/nuance/flext9_OEM/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    const-string/jumbo v0, "ChineseTradDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_5
    const-string/jumbo v0, "AlphaUdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
