.class public Lcom/android/mms/dom/smil/TimeImpl;
.super Ljava/lang/Object;
.source "TimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/Time;


# instance fields
.field mResolved:Z

.field mResolvedOffset:D

.field mTimeType:S


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "indefinite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 83
    iput-short v2, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    .line 98
    :goto_0
    return-void

    .line 84
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 86
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 92
    :goto_1
    int-to-float v0, v0

    invoke-static {p1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    .line 93
    iput-boolean v1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    .line 94
    iput-short v1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    const/4 v0, -0x1

    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static parseClockValue(Ljava/lang/String;)F
    .locals 9

    .prologue
    const v7, 0x476a6000    # 60000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 140
    :cond_0
    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v0

    mul-float/2addr v0, v6

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v0

    mul-float/2addr v0, v7

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const v1, 0x4a5bba00    # 3600000.0f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 149
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    mul-float/2addr v0, v6

    return v0

    .line 150
    :catch_0
    move-exception v4

    .line 155
    :try_start_2
    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 169
    :goto_1
    aget-object v4, v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v4

    float-to-int v4, v4

    .line 170
    if-ltz v4, :cond_6

    const/16 v5, 0x3b

    if-gt v4, v5, :cond_6

    .line 171
    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v0

    .line 178
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 179
    mul-float/2addr v0, v7

    add-float/2addr v0, v1

    goto :goto_0

    .line 161
    :cond_4
    array-length v0, v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 162
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v0

    float-to-int v0, v0

    const v4, 0x36ee80

    mul-int/2addr v0, v4

    int-to-float v0, v0

    move v8, v1

    move v1, v0

    move v0, v8

    .line 163
    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :catch_1
    move-exception v0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static parseFloat(Ljava/lang/String;IZ)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 213
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 214
    if-nez p2, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "int value contains decimal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 222
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 222
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 221
    div-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public getOffset()D
    .locals 2

    .prologue
    .line 256
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResolved()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    return v0
.end method

.method public getResolvedOffset()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    return-wide v0
.end method

.method public getTimeType()S
    .locals 1

    .prologue
    .line 268
    iget-short v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    return v0
.end method
