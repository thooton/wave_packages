.class public Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.source "SmilRegionMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionMediaElement;


# instance fields
.field private mRegion:Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getRegion()Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    .line 36
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    const-string/jumbo v1, "region"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 39
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 40
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "region"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    .line 38
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    return-object v0
.end method

.method public setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "region"

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    .line 51
    return-void
.end method
