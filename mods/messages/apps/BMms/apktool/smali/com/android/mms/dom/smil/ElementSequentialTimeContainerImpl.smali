.class public abstract Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementSequentialTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 49
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    sub-float/2addr p1, v0

    .line 50
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 51
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getDur()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v1

    .line 60
    cmpl-float v0, v1, v5

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 62
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 63
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 64
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 66
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 68
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    add-float/2addr v2, v0

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 71
    :cond_2
    return v2
.end method
