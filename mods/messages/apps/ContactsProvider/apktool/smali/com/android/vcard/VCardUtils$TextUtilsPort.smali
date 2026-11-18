.class public Lcom/android/vcard/VCardUtils$TextUtilsPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUtilsPort"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableAscii(C)Z
    .locals 3

    .prologue
    const/16 v2, 0x7e

    const/16 v1, 0x20

    const/4 v0, 0x1

    .line 105
    if-gt v1, p0, :cond_1

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v0, v1

    .line 110
    :goto_0
    if-ge v0, v2, :cond_1

    .line 111
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAscii(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    return v1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
