.class public final Lcom/nuance/flext9_OEM/input/NativeConfigInput;
.super Ljava/lang/Object;
.source "NativeConfigInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;
    }
.end annotation


# static fields
.field private static mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfiInput()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    .line 21
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap5(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)V

    .line 22
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap6(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)V

    .line 25
    :cond_0
    return-void
.end method

.method public static getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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
    .line 28
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 29
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0, p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap4(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getKey_speech(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 74
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->xt9input_config_getLanguages(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getT9TraceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 59
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-get0(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9WriteAlphaCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 64
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-get1(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9WriteChineseCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 69
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-get2(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXT9CoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 54
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-get3(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChineseInputBuildEnabled()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 39
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap0(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isTraceBuildEnabled()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 34
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap1(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isWriteAlphaBuildEnabled()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 49
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap2(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isWriteChineseBuildEnabled()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->createConfiInput()V

    .line 44
    sget-object v0, Lcom/nuance/flext9_OEM/input/NativeConfigInput;->mConfigInput:Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;->-wrap3(Lcom/nuance/flext9_OEM/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static native xt9input_config_getBuildInfo()Ljava/lang/String;
.end method

.method public static native xt9input_config_getCoreVersions()Ljava/lang/String;
.end method

.method public static native xt9input_config_getLanguages(Landroid/content/Context;)[B
.end method

.method public static native xt9input_config_getLanguagesOnDevice([IILjava/lang/String;)I
.end method
