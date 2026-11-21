.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 30
    if-ne p0, p1, :cond_0

    .line 31
    return v0

    .line 32
    :cond_0
    if-nez p0, :cond_3

    .line 33
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 34
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 33
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 34
    goto :goto_0

    :cond_2
    move v0, v1

    .line 33
    goto :goto_0

    .line 35
    :cond_3
    if-nez p1, :cond_5

    .line 36
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 37
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v1, v0

    .line 36
    :cond_4
    return v1

    .line 39
    :cond_5
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 39
    if-ne v2, v3, :cond_6

    .line 41
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 41
    if-ne v2, v3, :cond_6

    move v1, v0

    .line 39
    :cond_6
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    .prologue
    const v0, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 47
    if-nez p0, :cond_2

    move v3, v6

    .line 48
    :goto_0
    if-nez p1, :cond_3

    move v7, v6

    .line 49
    :goto_1
    if-nez p0, :cond_4

    move v4, v6

    .line 51
    :goto_2
    if-nez p1, :cond_5

    move v5, v6

    .line 55
    :goto_3
    if-eq v3, v6, :cond_0

    if-ne v4, v6, :cond_6

    :cond_0
    move v3, v0

    move v4, v2

    .line 63
    :goto_4
    if-eq v7, v6, :cond_1

    if-ne v5, v6, :cond_7

    :cond_1
    move v1, v2

    .line 71
    :goto_5
    if-gt v4, v1, :cond_8

    if-gt v1, v3, :cond_8

    .line 72
    return v8

    .line 47
    :cond_2
    const-string/jumbo v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 48
    :cond_3
    const-string/jumbo v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v7, v1

    goto :goto_1

    .line 50
    :cond_4
    const-string/jumbo v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    goto :goto_2

    .line 52
    :cond_5
    const-string/jumbo v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v5, v1

    goto :goto_3

    .line 59
    :cond_6
    mul-int/2addr v3, v4

    .line 60
    add-int v1, v3, v4

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    move v3, v1

    goto :goto_4

    .line 67
    :cond_7
    mul-int v1, v5, v7

    .line 68
    add-int v0, v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 73
    :cond_8
    if-gt v4, v0, :cond_9

    if-gt v0, v3, :cond_9

    .line 74
    return v8

    .line 76
    :cond_9
    return v2
.end method
