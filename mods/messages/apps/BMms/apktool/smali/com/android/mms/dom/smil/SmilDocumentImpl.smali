.class public Lcom/android/mms/dom/smil/SmilDocumentImpl;
.super Lcom/android/mms/dom/DocumentImpl;
.source "SmilDocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILDocument;
.implements Lorg/w3c/dom/events/DocumentEvent;


# instance fields
.field mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/dom/DocumentImpl;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string/jumbo v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 158
    if-nez v1, :cond_0

    .line 160
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 158
    if-eqz v1, :cond_1

    .line 161
    :cond_0
    new-instance v1, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 162
    :cond_1
    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v1, Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 164
    :cond_2
    const-string/jumbo v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    new-instance v1, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 166
    :cond_3
    const-string/jumbo v1, "root-layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    new-instance v1, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 168
    :cond_4
    const-string/jumbo v1, "region"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    new-instance v1, Lcom/android/mms/dom/smil/SmilRegionElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 170
    :cond_5
    const-string/jumbo v1, "ref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    new-instance v1, Lcom/android/mms/dom/smil/SmilRefElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilRefElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 172
    :cond_6
    const-string/jumbo v1, "par"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    new-instance v1, Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilParElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1

    .line 177
    :cond_7
    new-instance v1, Lcom/android/mms/dom/smil/SmilElementImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v0, "Event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/android/mms/dom/events/EventImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/events/EventImpl;-><init>()V

    return-object v0

    .line 287
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    .line 288
    const-string/jumbo v1, "Not supported interface"

    .line 287
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/w3c/dom/smil/SMILElement;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 212
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILElement;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    const-string/jumbo v1, "body"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 220
    :cond_1
    new-instance v2, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v2, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .line 259
    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    return-object v1
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/smil/SMILElement;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILElement;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    const-string/jumbo v0, "smil"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 190
    :cond_1
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    return-object v0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getFill()S

    move-result v0

    return v0
.end method

.method public getHead()Lorg/w3c/dom/smil/SMILElement;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/w3c/dom/smil/SMILElement;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const-string/jumbo v0, "head"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 203
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 206
    :cond_1
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    return-object v0
.end method

.method public getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 268
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/w3c/dom/smil/SMILLayoutElement;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    const-string/jumbo v2, "layout"

    invoke-direct {v0, p0, v2}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 275
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    :cond_1
    check-cast v0, Lorg/w3c/dom/smil/SMILLayoutElement;

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->pauseElement()V

    .line 108
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->resumeElement()V

    .line 112
    return-void
.end method

.method public seekElement(F)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->seekElement(F)V

    .line 116
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->setDur(F)V

    .line 124
    return-void
.end method
