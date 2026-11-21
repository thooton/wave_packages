.class public Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;
.super Lcom/nuance/flext9_OEM/input/Input;
.source "NativeConfigInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/NativeConfigInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputConfig"
.end annotation


# instance fields
.field private mAvailableLanguagesOnDevice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildInfo:Ljava/lang/String;

.field private mChineseInputEnabled:Z

.field private mCoreVersionStrings:Ljava/lang/String;

.field private mT9TraceCoreVersion:Ljava/lang/String;

.field private mT9WriteAlphaCoreVersion:Ljava/lang/String;

.field private mT9WriteChineseCoreVersion:Ljava/lang/String;

.field private mTraceBuildEnabled:Z

.field private mWriteAlphaBuildEnabled:Z

.field private mWriteChineseBuildEnabled:Z

.field private mXT9CoreVersion:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9TraceCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9WriteAlphaCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9WriteChineseCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mXT9CoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->isChineseInputBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->isTraceBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->isWriteAlphaBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->isWriteChineseBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getCoverVersions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Input;-><init>()V

    .line 91
    return-void
.end method

.method private getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    .line 195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    .line 197
    new-array v1, v2, [I

    .line 199
    const/4 v0, 0x0

    .line 201
    invoke-static {v1, v2, p1}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->xt9input_config_getLanguagesOnDevice([IILjava/lang/String;)I

    move-result v2

    .line 202
    :goto_0
    if-ge v0, v2, :cond_0

    .line 203
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    return-object v0
.end method

.method private getBuildInfo()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->xt9input_config_getBuildInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string/jumbo v1, "trace:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mTraceBuildEnabled:Z

    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string/jumbo v1, "chinese_input:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mChineseInputEnabled:Z

    .line 175
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string/jumbo v1, "write_alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mWriteAlphaBuildEnabled:Z

    .line 176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string/jumbo v1, "write_chinese:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mWriteChineseBuildEnabled:Z

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FAILED to get XT9 Build Info "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverVersions()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 116
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->xt9input_config_getCoreVersions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 130
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 131
    if-lez v2, :cond_0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "xt9core_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mXT9CoreVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    const-string/jumbo v1, "xt9input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing keycodes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    :try_start_1
    const-string/jumbo v2, "t9trace_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9TraceCoreVersion:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v2, "t9write_alpha_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9WriteAlphaCoreVersion:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_3
    const-string/jumbo v2, "t9write_chinese_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mT9WriteChineseCoreVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    :cond_4
    return-void
.end method

.method private isChineseInputBuildEnabled()Z
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 100
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mChineseInputEnabled:Z

    return v0
.end method

.method private isTraceBuildEnabled()Z
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 95
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mTraceBuildEnabled:Z

    return v0
.end method

.method private isWriteAlphaBuildEnabled()Z
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 110
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mWriteAlphaBuildEnabled:Z

    return v0
.end method

.method private isWriteChineseBuildEnabled()Z
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 105
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->mWriteChineseBuildEnabled:Z

    return v0
.end method
