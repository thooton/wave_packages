.class public Lcom/android/mms/dom/smil/SmilRegionElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private parseRegionLength(Ljava/lang/String;Z)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 256
    const-string/jumbo v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 259
    :cond_0
    const-string/jumbo v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v0

    .line 261
    if-eqz p2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    .line 266
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "fit"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v0, "fill"

    return-object v0

    .line 67
    :cond_0
    const-string/jumbo v1, "meet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string/jumbo v0, "meet"

    return-object v0

    .line 69
    :cond_1
    const-string/jumbo v1, "scroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string/jumbo v0, "scroll"

    return-object v0

    .line 71
    :cond_2
    const-string/jumbo v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string/jumbo v0, "slice"

    return-object v0

    .line 74
    :cond_3
    const-string/jumbo v0, "hidden"

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 161
    :try_start_0
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 162
    :cond_0
    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 172
    :try_start_1
    const-string/jumbo v1, "top"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 179
    :goto_0
    :try_start_2
    const-string/jumbo v1, "bottom"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    .line 185
    :goto_1
    return v0

    .line 180
    :catch_1
    move-exception v1

    goto :goto_1

    .line 173
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 4

    .prologue
    .line 80
    :try_start_0
    const-string/jumbo v0, "left"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 88
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 89
    const-string/jumbo v2, "width"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 90
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0

    .line 91
    :catch_1
    move-exception v0

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getTop()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    :try_start_0
    const-string/jumbo v0, "top"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 108
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 109
    const-string/jumbo v1, "bottom"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 110
    const-string/jumbo v2, "height"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 111
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0

    .line 112
    :catch_1
    move-exception v0

    .line 117
    return v4
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 194
    :try_start_0
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :cond_0
    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 205
    :try_start_1
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 212
    :goto_0
    :try_start_2
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    .line 218
    :goto_1
    return v0

    .line 213
    :catch_1
    move-exception v1

    goto :goto_1

    .line 206
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 222
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const-string/jumbo v0, "fit"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v0, "fit"

    const-string/jumbo v1, "hidden"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 226
    const-string/jumbo v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 248
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/mms/dom/smil/SmilElementImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string/jumbo v1, ": id="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string/jumbo v1, ", width="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string/jumbo v1, ", height="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v1, ", left="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string/jumbo v1, ", top="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
