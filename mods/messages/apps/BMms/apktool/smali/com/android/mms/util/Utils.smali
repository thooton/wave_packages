.class public Lcom/android/mms/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStoragePath(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-static {p0}, Landroid/os/Environment;->getExternalSDcardDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
