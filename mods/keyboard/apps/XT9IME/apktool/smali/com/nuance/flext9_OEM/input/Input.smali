.class public abstract Lcom/nuance/flext9_OEM/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static final XT9PRIMARY_LANGUAGEID_MASK:I = 0xff

.field private static final XT9SECONDARY_LANGUAGEID:I = 0x100

.field private static mNativeLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/flext9_OEM/input/Input;->mNativeLibLoaded:Z

    .line 22
    :try_start_0
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/Input;->mNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 25
    :try_start_1
    const-string/jumbo v0, "/data/data/com.nuance.flext9_OEM.input/lib/libjni_xt9input.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/flext9_OEM/input/Input;->mNativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    const-string/jumbo v0, "jni_xt9input"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/flext9_OEM/input/Input;->mNativeLibLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    const-string/jumbo v0, "AlphaInput"

    const-string/jumbo v1, "Could not load native library jni_xt9input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static normalizeXT9LanguageID(I)I
    .locals 1

    .prologue
    .line 197
    and-int/lit16 v0, p0, 0xff

    or-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public create()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyPositions(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getTracePositions(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/nuance/flext9_OEM/input/Int;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public initTrace(III)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public processKey(III)Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public processTrace(ILjava/util/ArrayList;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyboardLayoutsize(II)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public setLanguage(I)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
