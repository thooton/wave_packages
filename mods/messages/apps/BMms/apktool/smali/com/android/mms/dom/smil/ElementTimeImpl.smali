.class public abstract Lcom/android/mms/dom/smil/ElementTimeImpl;
.super Ljava/lang/Object;
.source "ElementTimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTime;


# instance fields
.field final mSmilElement:Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    .line 50
    return-void
.end method

.method private beginAndEndAreZero()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v3

    .line 167
    invoke-interface {v2}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 168
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v2

    .line 169
    invoke-interface {v3, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v3

    .line 170
    invoke-interface {v2}, Lorg/w3c/dom/smil/Time;->getOffset()D

    move-result-wide v4

    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/smil/Time;->getOffset()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 172
    :cond_1
    return v1
.end method


# virtual methods
.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v2, "begin"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 80
    :try_start_0
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBeginConstraints()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/android/mms/dom/smil/TimeImpl;

    const-string/jumbo v1, "0"

    const/16 v3, 0xff

    invoke-direct {v0, v1, v3}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    new-instance v0, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v0, v2}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    .line 81
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method getBeginConstraints()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xff

    return v0
.end method

.method public getDur()F
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v2, "dur"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v2, "end"

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 128
    array-length v5, v4

    .line 129
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 131
    :goto_0
    if-ge v2, v5, :cond_1

    .line 133
    :try_start_0
    new-instance v0, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v6, v4, v2

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v7

    .line 133
    invoke-direct {v0, v6, v7}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v6, "Mms"

    const-string/jumbo v7, "Malformed time value."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v2

    .line 147
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    .line 148
    new-instance v0, Lcom/android/mms/dom/smil/TimeImpl;

    const-string/jumbo v1, "indefinite"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    new-instance v0, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v0, v3}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v4

    move v0, v1

    .line 152
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 153
    new-instance v1, Lcom/android/mms/dom/smil/TimeImpl;

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    float-to-double v8, v2

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v6

    .line 153
    invoke-direct {v1, v5, v6}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method getEndConstraints()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xff

    return v0
.end method

.method public getFill()S
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "fill"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    return v3

    .line 179
    :cond_0
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    return v2

    .line 181
    :cond_1
    const-string/jumbo v1, "hold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    return v3

    .line 184
    :cond_2
    const-string/jumbo v1, "transition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    return v3

    .line 187
    :cond_3
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v0

    .line 194
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 195
    return v0

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "dur"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "end"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 211
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "repeatCount"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 212
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "repeatDur"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 214
    :cond_5
    return v3

    .line 213
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->beginAndEndAreZero()Z

    move-result v0

    .line 209
    if-nez v0, :cond_5

    .line 216
    return v2
.end method

.method public getFillDefault()S
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 221
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "fillDefault"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    const-string/jumbo v1, "freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    return v2

    .line 226
    :cond_1
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    return v3

    .line 228
    :cond_2
    const-string/jumbo v1, "hold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    return v2

    .line 231
    :cond_3
    const-string/jumbo v1, "transition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    return v2

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getParentElementTime()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    .line 242
    if-nez v0, :cond_5

    .line 247
    return v3

    .line 249
    :cond_5
    check-cast v0, Lcom/android/mms/dom/smil/ElementTimeImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v0

    return v0
.end method

.method abstract getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
.end method

.method public setDur(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method
