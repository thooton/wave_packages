.class final Lcom/nuance/flext9_OEM/input/TestWordList;
.super Ljava/lang/Object;
.source "TestWordList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/TestWordList$sortedByLength;
    }
.end annotation


# static fields
.field private static mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mEnglishPhonepadTestKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnglishPhonePadTestKey(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishPhonepadTestKeys:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishPhonepadTestKeys:Ljava/util/LinkedList;

    .line 35
    const-string/jumbo v0, "test_keys_english_phonepad.txt"

    sget-object v1, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishPhonepadTestKeys:Ljava/util/LinkedList;

    invoke-static {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/TestWordList;->readAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 36
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishPhonepadTestKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/nuance/flext9_OEM/input/TestWordList$sortedByLength;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/TestWordList$sortedByLength;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishPhonepadTestKeys:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getEnglishQwertyTestKey(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;

    .line 25
    const-string/jumbo v0, "test_keys_english_qwerty.txt"

    sget-object v1, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;

    invoke-static {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/TestWordList;->readAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 26
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/nuance/flext9_OEM/input/TestWordList$sortedByLength;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/TestWordList$sortedByLength;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/TestWordList;->mEnglishFullQwertyTestKeys:Ljava/util/LinkedList;

    return-object v0
.end method

.method private static readAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "TestWordList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method
