.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getConvertExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, ".fl"

    return-object v0
.end method

.method public static haveRightsForAction(Landroid/net/Uri;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 71
    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    throw v0

    .line 73
    :catch_0
    move-exception v1

    .line 77
    :cond_1
    return v0
.end method

.method public static isDrmType(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "DrmManagerClient didn\'t initialize properly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :catch_1
    move-exception v1

    .line 50
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "canHandle called with wrong parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
